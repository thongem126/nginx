FROM nginx:1.13.9-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /usr/share/nginx/site1 && \
    mkdir -p /usr/share/nginx/site2 && \
    echo '<h1>Le Minh Thong Port 1st</h1>' > /usr/share/nginx/site1/index.html && \
    echo '<h1>Le Minh Thong Port 2nd</h1>' > /usr/share/nginx/site2/index.html
EXPOSE 8080 
EXPOSE 8433 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
