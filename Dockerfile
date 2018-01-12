FROM clojure:alpine

MAINTAINER Baiyuan Wang <wangbaiyuan@outlook.com>

ENV PHANTOMJS_VERSION 2.1.1
ENV SASS_VERSION 3.5.3
ENV LANG en_US.utf8
RUN apk --update add --no-cache git ruby
WORKDIR /account-dashboard
RUN git clone https://github.com/sass/sass --branch $SASS_VERSION --single-branch && \
    ln -s /sass/bin/sass /usr/bin/sass && \
    apk del git && \
    rm -rf /var/cache/apk/* sass

ADD project.clj .
RUN lein deps
CMD sass -v