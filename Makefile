DOCKER_ACCOUNT?=TBD
APP?=cloud-sample-node-chat
VERSION?=0.0.1
IMG=${DOCKER_ACCOUNT}/${APP}:${VERSION}
CHANGE?="TBD"

build-image:
	docker build -t $(IMG) --label "CHANGE=$(CHANGE)" .

push-image:
	docker push $(IMG)

run-local:
	docker run -p 8089:8089 $(IMG)