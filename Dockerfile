FROM node:14.8.0-alpine3.10

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install

COPY . .

ENV HOST 0.0.0.0
ENV PORT 3000

EXPOSE 3000
CMD npm start