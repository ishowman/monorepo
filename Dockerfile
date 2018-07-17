FROM node:8.11.3
RUN apt-get update \    && apt-get install -y nginx
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN  npm install \     
&& npm run build \     
&& cp -r dist/* /var/www/demo \     
&& rm -rf /app
CMD ["nginx","-g","daemon off;"]