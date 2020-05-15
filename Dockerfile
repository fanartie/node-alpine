FROM node:lts-alpine
#run apk --no-cache add --virtual native-deps \
# g++ gcc libgcc libstdc++ linux-headers make python && \
#  npm install --quiet node-gyp -g &&\
#  npm install --quiet && \
#  apk del native-deps

RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies
    
#RUN npm config set python python2.7    
RUN whereis python 
