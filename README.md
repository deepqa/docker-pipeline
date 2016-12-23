# Instructions on Running the Docker Container

### Clone the docker-pipeline Repository
		$ git clone git@github.com:yaqas/docker-pipeline.git
		$ cd docker-pipeline
		$ ls
		Dockerfile	LICENSE	README.md 	...

### Building the Docker Image!
        $ docker build -t docker-pipeline .
### Mounting your dev directory into the container
		$ docker run --volume /path/to/your/dev/directory:/pipeline -it docker-pipeline

