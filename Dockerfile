FROM nginx:1.27-alpine

# создадим директорию для ssl
RUN mkdir -p /etc/nginx/ssl

# копируем сертификаты
COPY ssl/ca.example.com.pem /etc/nginx/ssl/ca.example.com.pem
COPY ssl/ca.example.com_unencrypted.key /etc/nginx/ssl/ca.example.com_unencrypted.key

# конфиг
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443
