FROM node:13

WORKDIR /opt/www

COPY . /opt/www

RUN yarn config set yarn-offline-mirror /root/npm-packages-offline-cache \
    && yarn config set yarn-offline-mirror-pruning true \
    && rm -rf node_modules/ yarn.lock \
    && yarn install \
    && rm -rf /opt/www \
    && mkdir -p /opt/www
 
WORKDIR /opt/www

EXPOSE 9527
