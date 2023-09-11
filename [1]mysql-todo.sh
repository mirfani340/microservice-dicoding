#! /bin/bash
docker run -d \
  --name mysql-db \
  --network todo-app --network-alias mysql \
  -v todo-mysql-data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=dicoding \
  -e MYSQL_DATABASE=todo-db \
  mysql:5.7

