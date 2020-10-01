FROM nginx:alpine
MAINTAINER IvanovDmytro
COPY ./index.html /usr/share/nginx/html/index.html
ADD ./entrypoint.sh /usr/share/nginx/html/entrypoint.sh
WORKDIR /usr/share/nginx/html
RUN chmod +x /usr/share/nginx/html/entrypoint.sh
CMD /usr/share/nginx/html/entrypoint.sh && nginx -g 'daemon off;'

#docker run -d -e NAME=James -e AGE=27 my-custom-nginx








