FROM node:13

WORKDIR /opt/www

COPY . /opt/www

RUN yarn install

EXPOSE 9527
