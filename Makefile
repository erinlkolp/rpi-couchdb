ACTIVE_TAG?=latest
DH_REPO=ekolp
IMAGE_TAG?=latest


build:
	docker build -t ${DH_REPO}/rpi-couchdb:${IMAGE_TAG} .;

clean:
	docker rmi `docker images -q -f dangling=true`
