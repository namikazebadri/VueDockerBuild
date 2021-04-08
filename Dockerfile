FROM node:14.16.0-alpine3.13

ENV VUEJS_HOME=/app

RUN mkdir -p $VUEJS_HOME

WORKDIR $VUEJS_HOME

COPY . $VUEJS_HOME

# install dependencies
RUN npm install -g serve

RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]