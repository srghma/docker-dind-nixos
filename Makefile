# XXX
# to login use
# docker login

DOCKER_ID_USER ?= srghma
DOCKER_IMAGE_NAME ?= docker-dind-nixos

docker_build:
	docker build --pull --tag "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}" .

docker_upload:
	docker push "${DOCKER_ID_USER}/${DOCKER_IMAGE_NAME}"

docker_build_and_upload:
	${MAKE} docker_build
	${MAKE} docker_upload
