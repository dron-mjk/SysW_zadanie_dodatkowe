FROM scratch as compilation
ARG VERSION
ENV APP_VERSION=${VERSION}
ADD alpine-minirootfs-3.20.3-x86_64.tar.gz /

RUN apk add nodejs npm
RUN mkdir /var/node
WORKDIR /var/node
ADD src ./

RUN ls /var/node

RUN npm install

FROM nginx
ARG VERSION
ENV APP_VERSION=${VERSION}

RUN apt update
RUN curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs screen

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=compilation /var/node /var/node
EXPOSE 80

COPY startup.sh .

CMD [ "bash", "startup.sh"]
