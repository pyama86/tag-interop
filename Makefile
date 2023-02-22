dev:
	docker rm -f tag-dev | true
	docker build --platform linux/amd64 -t tag-dev .
	docker run -d --entrypoint "" --name tag-dev --platform linux/amd64 -v `pwd`:/opt/unleash -w /opt/unleash -it tag-dev /sbin/init
	docker exec -it tag-dev /bin/bash
