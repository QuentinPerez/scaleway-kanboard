DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-kanboard
VERSION =		latest
VERSION_ALIASES =	1.0 1
TITLE =			Kanboard
DESCRIPTION =		Kanboard is a project management software that use the Kanban methodology
SOURCE_URL =		https://github.com/scaleway/image-app-kanboard

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Kanboard

all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
