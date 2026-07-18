FROM nginx:1.27-alpine

LABEL maintainer="Krishan Mohan Sharma"

RUN rm -rf /usr/share/nginx/html/*

COPY app/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]