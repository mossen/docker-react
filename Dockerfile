# You should always specify a full version here to ensure all of your developers
# are running the same version of Node.
FROM node:9.5-alpine

WORKDIR /var/www/html/
COPY . .

RUN yarn install

ENTRYPOINT yarn start
