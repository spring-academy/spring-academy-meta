#!make


.PHONY: deploy release

# TODO - have this create a docker image with the artifacts in it and push to packages
#        as part of a Release
release:

deploy: deploy-instructors deploy-pages deploy-paths deploy-tests

deploy-instructors:
	lms/deploy.sh deploy-instructors

deploy-pages:
	lms/deploy.sh deploy-pages

deploy-tests:
	lms/deploy.sh deploy-tests

deploy-paths:
	lms/deploy.sh deploy-paths

deploy-local: deploy-instructors deploy-pages deploy-downstream-courses deploy-tests deploy-paths
