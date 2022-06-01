# Simple React

Sample React.js application for the Docker environment.


### Prerequisites

Make sure you have already installed Docker Engine.
You don’t need to install Nginx or NPM, as both are provided by Docker images.

```
$ docker -v
Docker version 18.03.1-ce, build 9ee9f40
```


### Installing

```
git clone https://github.com/jebincvarghese/docker-reactjs
cd docker-reactjs
docker build -t docker-reactjs .
docker run -p 80:80 docker-reactjs

```
Go to [http://localhost](http://localhost)


## Built With

* [Nginx](https://nginx.org/en/) - Web server
* [React.js](https://reactjs.org/) - The front-end framework used
* [Docker](https://www.docker.com/) - Containerization
* [Materialize](https://materializecss.com/) - Front-end framework





