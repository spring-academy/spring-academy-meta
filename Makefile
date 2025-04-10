#!make


.PHONY: deploy release

# TODO - have this create a docker image with the artifacts in it and push to packages
#        as part of a Release
release:

deploy: deploy-instructors deploy-pages deploy-paths deploy-tests

apply-portals:
	educates/scripts/portal-registerer.sh apply-portals

inactivate-portals:
	educates/scripts/portal-registerer.sh inactivate-portals

delete-portals:
	educates/scripts/portal-registerer.sh delete-portals

deploy-instructors:
	penguin/deploy.sh deploy-instructors

deploy-pages:
	penguin/deploy.sh deploy-pages

deploy-downstream-courses:
	penguin/deploy.sh deploy-downstream-courses

deploy-tests:
	penguin/deploy.sh deploy-tests

deploy-paths:
	penguin/deploy.sh deploy-paths

deploy-local: deploy-instructors deploy-pages deploy-downstream-courses deploy-tests deploy-paths
