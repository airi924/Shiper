FROM node:20-alpine3.20

WORKDIR /tmp

ENV UUID=c51c3e58-9330-4e2d-bb1f-d8434d706f8d \
    ARGO_DOMAIN=xxxx.com \
    ARGO_AUTH=eyxxxxx
    

RUN apk update && apk add --no-cache bash openssl curl &&\
    npm i node-sbx

CMD ["npx", "node-sbx"]
