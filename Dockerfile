FROM node:14.8.0-alpine3.10

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install -g nodemon
RUN npm install && mv node_modules ../

COPY ./src .

ENV HOST 0.0.0.0
ENV PORT 3000

EXPOSE 3000
CMD npm start