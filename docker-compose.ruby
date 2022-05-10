version: '3'

volumes:
  logvolume01: {}

networks:
  app-net:

services:
  webserver:
    build: .
    hostname: webserver
    ports:
      - 80:80
    restart: always
    volumes:
      - $PWD/html:/var/www/html
    network:
      - app_net

  redis:
    image: redis
    network:
      - app_net
      
  
