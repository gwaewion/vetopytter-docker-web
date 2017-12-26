FROM alpine:latest
LABEL maintainer="gwaewion@gmail.com"
EXPOSE 80

RUN apk update
RUN apk add nginx
RUN mkdir /run/nginx
COPY nginx.conf /etc/nginx/

WORKDIR /

CMD ["nginx", "-g", "daemon off;"]
