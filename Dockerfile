FROM node:14.8.0-alpine3.10

RUN mkdir /home/node/app/ && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node package*.json ./

RUN npm install -g nodemon

USER node

RUN npm install && mv node_modules ../

COPY --chown=node:node ./src .

ENV HOST 0.0.0.0
ENV PORT 3000

EXPOSE 3000
CMD npm start