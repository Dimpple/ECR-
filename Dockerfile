FROM nginx:alpine
Maintainer pavi
LABEL this is a food delivery app
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html
USER nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
