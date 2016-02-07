build:
	docker build -t mwerlen/sglk-geoserver:latest .

run:
	docker run --name sglk --rm -p 8080:8080 mwerlen/sglk-geoserver:latest

bash:
	docker exec -t -i sglk /bin/bash

image_bash:
	docker run -i -t --entrypoint /bin/bash mwerlen/sglk-geoserver:latest

debug:
	mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
	docker run --rm --name debug -v ${mkfile_path}/geoserver-data-dir:/var/lib/geoserver_data  -p 8080:8080 mwerlen/sglk-geoserver:latest
