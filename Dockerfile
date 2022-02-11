# Nginx state for serving content and alpine as base os image
FROM nginx:alpine

# Copying web assets from current directory to nginx asset directory
COPY ./*.html /usr/share/nginx/html/
