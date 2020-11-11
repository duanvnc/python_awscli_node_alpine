FROM python:alpine

ARG CLI_VERSION=1.16.86

RUN apk -uv add --no-cache groff jq less && \
    pip install --no-cache-dir awscli==$CLI_VERSION

RUN apk add --update nodejs nodejs-npm && \
    node -v
RUN apk add --update yarn
RUN npm install serverless -g --silent

WORKDIR /aws

CMD sh
