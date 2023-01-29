FROM node:19-alpine3.16

ENV MONGO_DB_USERNAME=mongoadmin \
	MONGO_DB_PWD=secret

RUN mkdir -p /home/YelpCamp

COPY . /home/YelpCamp

WORKDIR /home/YelpCamp

CMD ["node", "app.js"]