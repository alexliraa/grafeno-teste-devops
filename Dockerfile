FROM nginx:stable-alpine3.17-slim

RUN cp /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.grafeno && \
    sed -i 's/listen[[:space:]]*80;/listen 9090;/g' /etc/nginx/conf.d/default.conf

EXPOSE 9090

CMD ["nginx", "-g", "daemon off;"]