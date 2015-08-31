DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-kanboard
VERSION =		1.0
VERSION_ALIASES =	latest
TITLE =			Kanboard
DESCRIPTION =		Kanboard is a project management software that use the Kanban methodology
SOURCE_URL =		https://github.com/scaleway/image-app-kanboard

all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
