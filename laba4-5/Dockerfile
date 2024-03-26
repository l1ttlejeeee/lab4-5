FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html

EXPOSE 80