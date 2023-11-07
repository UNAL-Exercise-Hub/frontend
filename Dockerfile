FROM nginx
RUN apt-get update -qq && apt-get -y install apache2-utils
ENV NODE_ROOT /var/www/api-gateway
WORKDIR $NODE_ROOT
RUN mkdir log
COPY app.conf /tmp/app.nginx
COPY cert.crt /etc/nginx
COPY cert.key /etc/nginx
COPY build/web /etc/nginx/html
RUN envsubst '$NODE_ROOT' < /tmp/app.nginx > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
