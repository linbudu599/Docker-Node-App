FROM node

RUN mkdir /node-test
COPY . /node-test/

WORKDIR /node-test
RUN rm -rf /node-test/node_modules
RUN npm install --production

EXPOSE 80

ENTRYPOINT ["npm","run","server"]
