FROM nginx

WORKDIR /app

RUN apt-get update -y &&\
    apt-get install nginx -y
    
EXPOSE 8000

CMD ["nginx"]



