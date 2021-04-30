# pub-debian-jsr

This Dockerfile creates an ssh service inside a debian docker container


![Docker](https://github.com/scottrussom/pub-debian-jsr/workflows/Docker/badge.svg)

* default username and password is test

## Building the image

` docker build -t IMAGE_NAME . ` 

## Running the image 

` docker run -p 22:22 IMAGE_NAME `
