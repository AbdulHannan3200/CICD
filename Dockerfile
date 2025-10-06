FROM nginx:latest
# Remove the default nginx config
RUN rm /etc/nginx/conf.d/default.conf
# Copy your custom nginx config
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
# Copy SSL certificates into the container
COPY nginx/ssl /etc/nginx/ssl
# Expose ports for HTTP and HTTPS
EXPOSE 80
EXPOSE 443
# Start nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
