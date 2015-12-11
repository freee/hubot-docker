FROM mhart/alpine-node:4.2.3

ENV HUBOT_HOME=/var/app

RUN apk update &&\
    apk add tzdata &&\
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    apk del tzdata

COPY ./ ${HUBOT_HOME}/hubot
WORKDIR ${HUBOT_HOME}/hubot
RUN npm install

CMD bin/hubot --adapter slack