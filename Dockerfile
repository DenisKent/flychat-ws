FROM node:21.2-alpine3.18

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install --production

COPY . .

ENV PORT=8080

CMD [ "npm","start" ]