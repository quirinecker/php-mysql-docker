source settings.sh

echo "
version: '3.2'

services:
  php:
    container_name: wdt_php
    build: php
    networks:
      - backend
    volumes:
      - ../$document_root:/var/www/html/

  httpd:
    container_name: wdt_httpd
    build: httpd
    depends_on:
      - php
      - mysql
    networks:
      - frontend
      - backend
    ports:
      - 80:80
    volumes:
      - ../$document_root:/var/www/html/

  mysql:
    container_name: wdt_mysql
    image: mysql:5.6.40
    networks:
      - backend
    environment:
      MYSQL_ROOT_PASSWORD: root
    ports:
      - 3306:3306

  phpmyadmin:
    container_name: wdt_phpmyadmin
    image: phpmyadmin/phpmyadmin:4.9
    networks:
      - backend
    ports:
      - 8080:80
    environment:
      PMA_HOST: mysql
      MYSQL_ROOT_PASSWORD: root

networks:
  frontend:
  backend:
" > ./docker/docker-compose.yml;

mkdir $document_root;

#echo starting docker
#./stopdocker.sh
#
#settings=$(cat ./docker/settings.yml)
#document_root=(${settings//: / })
#echo "${document_root[1]}"
#sed "s/DOCUMENT_ROOT/${document_root[1]}/" docker/docker-compose.template.yml > docker/docker-compose.yml

cd docker
docker-compose up --build -d
cd ..
