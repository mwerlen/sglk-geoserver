A Custom Geoserver image with my sample data
============================================


Description
-----------

Starting from a standard geoserver, I add my custom data. 

Geoserver run on container port 8080.


Contributing
------------

**To build image**
`docker build -t mwerlen/sglk-geoserver:latest .`

**To run docker image**
`docker run -d -p 8080:8080 mwerlen/sglk-geoserver:latest`

**To run bash in container**
`docker exec -t -i <container_name> /bin/bash`

**To run bash inside an image**
`docker run -i -t --entrypoint /bin/bash <image_hash>`

**To run with your local copy of geoserver_data**
`docker run --rm --name debug -v <path_to_project>/geoserver-data-dir:/var/lib/geoserver_data  -p 8080:8080 mwerlen/sglk-geoserver:latest`
