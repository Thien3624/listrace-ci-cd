FROM nginx:alpine3.19-slim
WORKDIR /run
RUN adduser -D listrace

COPY . .
COPY nginx.conf /etc/nginx/nginx.conf
RUN chown -R listrace:listrace /run/
