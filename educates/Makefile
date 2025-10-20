#!make
include Makefile.env

.PHONY: build release

build:
	docker build --build-arg VERSION="${version}" -t "${CONTAINER_REGISTRY}/${CONTAINER_REPOSITORY}:${version}" -f Dockerfile .

release: build
	docker tag ${CONTAINER_REGISTRY}/${CONTAINER_REPOSITORY}:${version} ${CONTAINER_REGISTRY}/${CONTAINER_REPOSITORY}:latest
	docker push ${CONTAINER_REGISTRY}/${CONTAINER_REPOSITORY}:${version}
	docker push ${CONTAINER_REGISTRY}/${CONTAINER_REPOSITORY}:latest