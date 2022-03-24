FROM node:17.8-alpine3.15

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install --production

COPY . .

ENV PORT=8080

CMD [ "npm","start" ]