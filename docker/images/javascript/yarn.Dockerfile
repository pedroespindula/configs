FROM node:latest

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

CMD ["yarn", "run", "start"]

COPY package.json .
COPY yarn.lock .

RUN yarn install --no-optional --verbose

COPY . /app
