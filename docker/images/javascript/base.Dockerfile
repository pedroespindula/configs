FROM node:latest

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

CMD ["npm", "run", "start"]

COPY package.json .
COPY package-lock.json .

RUN npm install --no-optional --loglevel verbose

COPY . /app
