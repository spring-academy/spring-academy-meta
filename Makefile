#!make


.PHONY: deploy release

# TODO - have this create a docker image with the artifacts in it and push to packages
#        as part of a Release
release:

deploy: deploy-pages deploy-instructors deploy-paths deploy-tags

deploy-pages:
	metadata/lms/deploy.sh deploy-pages

deploy-instructors:
	metadata/lms/deploy.sh deploy-instructors

deploy-downstream-courses:
	metadata/lms/deploy.sh deploy-downstream-courses

deploy-paths:
	metadata/lms/deploy.sh deploy-paths

deploy-tags:
	metadata/lms/deploy.sh deploy-tags

deploy-local: deploy-instructors deploy-pages deploy-downstream-courses deploy-paths
