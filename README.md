# fun-containers-01
First example for Fun with Containers session

# Running instructions

- Install [Docker](https://www.docker.com/)
- Build the image
```
docker build . -t image-name
```
- Run the container (internally, port 3000, but in your computer it's exposed as port 8080)
```
docker run -p 8080:3000 image-name
```
Browse to http://localhost:8080