FROM node:lts-alpine

WORKDIR /opt/heroku
RUN apk add curl bash && curl -s https://cli-assets.heroku.com/install.sh | sh && apk del curl

COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]

