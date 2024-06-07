FROM node:18.4.0

WORKDIR site

WORKDIR /

COPY . .

WORKDIR /_site/

RUN npm install --production

ENTRYPOINT npx serve -l tcp://0.0.0.0:8000
