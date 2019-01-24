FROM node:11-alpine

LABEL "com.github.actions.name"="GH-Pages Deploy"
LABEL "com.github.actions.description"="Auto Deploy Github Pages"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="black"

LABEL maintainer="ZHAO Jinxiang <xiaoxiangmoe@gmail.com>"

RUN apk --no-cache add git
RUN yarn global add gh-pages
ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
