FROM node:13

WORKDIR /opt/www

COPY . /opt/www

RUN yarn config set yarn-offline-mirror ~/npm-packages-offline-cache \
    && yarn config set yarn-offline-mirror-pruning true \
    && touch  .yarnrc \
    && rm -rf node_modules/ yarn.lock \
    && yarn install \
    && rm /opt/www -rf 

EXPOSE 9527
