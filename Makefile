#!make


.PHONY: deploy release

# TODO - have this create a docker image with the artifacts in it and push to packages
#        as part of a Release
release:

deploy: deploy-instructors deploy-pages deploy-paths deploy-tests

deploy-instructors:
	metadata/deploy.sh deploy-instructors

deploy-pages:
	metadata/deploy.sh deploy-pages

deploy-downstream-courses:
	metadata/deploy.sh deploy-downstream-courses

deploy-tests:
	metadata/deploy.sh deploy-tests

deploy-paths:
	metadata/deploy.sh deploy-paths

deploy-local: deploy-instructors deploy-pages deploy-downstream-courses deploy-tests deploy-paths
