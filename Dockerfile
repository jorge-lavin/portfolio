FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY blog /usr/share/nginx/html/blog
