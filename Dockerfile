FROM nginx:1.13.9-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/site1
COPY index.html /usr/share/nginx/site2
EXPOSE 8080 
EXPOSE 8433 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
