#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
META_DIR="$(cd "${SCRIPT_DIR}/lms" && pwd)"

PENGUINCTL_APIURL="${PENGUINCTL_APIURL:-https://penguin-spring.test/api/v1}"
PENGUINCTL_APITOKEN="${PENGUINCTL_APITOKEN:-47f6c9c6-f6e4-4e54-ba63-c3f387ff76b9|oKxR3Lx2k78kKm2x3HECDqAU2slFBcYyXaSFQNRy}"
PENGUIN_USEDOCKER="${PENGUIN_USEDOCKER:-true}"

export PENGUINCTL_APIURL
export PENGUINCTL_APITOKEN
export PENGUIN_USEDOCKER

penguinctl-docker() {
    echo "penguinctl version $(docker run --rm ghcr.io/spring-academy/penguinctl:latest --version)"
    docker run --rm -v "$(pwd)":"$(pwd)" ghcr.io/spring-academy/penguinctl:latest --url="${PENGUINCTL_APIURL}" --token="${PENGUINCTL_APITOKEN}" $@
}

penguinctl-local() {
    echo "penguinctl version $(penguinctl --version)"
    penguinctl --url="${PENGUINCTL_APIURL}" --token="${PENGUINCTL_APITOKEN}" $@
}

penguinctlcmd() {
    if [[ "${PENGUIN_USEDOCKER:-true}" != "false" ]]; then
        penguinctl-docker "$@"
    else
        penguinctl-local "$@"
    fi
}

deploy-instructors() {
    echo "=== Applying instructors"
    penguinctlcmd apply instructors --path="${META_DIR}/instructors"
}

deploy-pages() {
    export GITHUB_REF_NAME="${GITHUB_REF_NAME:-$(git branch --show-current)}"
    export GITHUB_SHA="${GITHUB_SHA:-$(git status)}"
    export GITHUB_ACTOR="${GITHUB_ACTOR:-${USER}@local}"
    DEBUG_DATE=$(date)
    export DEBUG_DATE

    echo "=== Applying pages"
    for pageDir in "${META_DIR}"/pages/*; do
        envsubst < "${pageDir}/content.template.md" > "${pageDir}/content.md"
        echo "=== penguinctl apply page -f $(pwd)/${pageDir}/page.json"
        penguinctlcmd apply page -f "$(pwd)/${pageDir}/page.json"
        rm "${pageDir}/content.md"
    done
}

deploy-tests() {
    echo "=== Applying tests"
    for path in "${META_DIR}"/tests/*/test.json; do
        echo "=== penguinctl apply test -f $(pwd)/${path}"
        penguinctlcmd apply test -f "$(pwd)/${path}"
    done
}

deploy-paths() {
    echo "=== Applying paths"
    for path in "${META_DIR}"/paths/*/path.json; do
        echo "=== penguinctl apply path -f $(pwd)/${path}"
        penguinctlcmd apply path -f "$(pwd)/${path}"
    done
}

"$@"
