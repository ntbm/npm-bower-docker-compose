FROM node:8-wheezy
MAINTAINER Sascha Hahne <hahne.sascha@web.de>

#Allow bower install with root
RUN echo '{ "allow_root": true }' > /root/.bowerrc

RUN npm install -g bower


# copy application into image
COPY . /app/

WORKDIR /app/

#Install Dependencies
RUN bower install
RUN npm install

CMD ["node", "src/server"]

EXPOSE 3000

