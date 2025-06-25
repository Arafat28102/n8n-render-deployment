FROM n8nio/n8n:latest

RUN apk add --no-cache postgresql-client

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node

CMD ["n8n", "start"]
