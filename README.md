# fun-containers-01
First example for Fun with Containers session. (Single container)

# Part 1: Running instructions

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

# Part 2: Running and debugging with Docker Compose

Run the container with:
```
docker-compose up
```
Now any code change will be reflected immediately. Also, if you attach your IDE to port 5858 (sample included for Visual Studio Code), you can use the debugger against the code running inside the container.