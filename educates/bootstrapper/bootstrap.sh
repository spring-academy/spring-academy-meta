#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi

DIR="$(dirname "$0")"
if [[ "${1}" == "production" ]]; then
   export ENVIRONMENT="prod"
else
   export ENVIRONMENT="${1}"
fi
export INGRESS_DOMAIN="${2}"


export SERVICEACCOUNT=/var/run/secrets/kubernetes.io/serviceaccount
export TENANT_NAMESPACE=$(cat ${SERVICEACCOUNT}/namespace)

echo "using ${ENVIRONMENT} environment"
envsubst '${ENVIRONMENT} ${TENANT_NAMESPACE}' < ${DIR}/cronjob.yaml | kubectl apply -f -