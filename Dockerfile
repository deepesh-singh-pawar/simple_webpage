FROM nginx:alpine

# Clean default html
RUN rm -rf /usr/share/nginx/html/*

# Copy your file
COPY k8s/index.html /usr/share/nginx/html/index.html

# Fix permissions (important for 403)
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]