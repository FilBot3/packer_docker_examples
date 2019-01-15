.PHONY: packer-build compose-up compose-rm

packer-build:
	packer build packer_docker_template.json

compose-up:
	docker-compose up

compose-rm:
	docker-compose rm

clean:
	rm -rf .vagrant

docker-import: packer-build
	docker import - pred/centos7:0.1.0 < packer_image.tar
	# Only works if the package isn't cleaned up after a Packer build.