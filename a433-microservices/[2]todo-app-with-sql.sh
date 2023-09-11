#! /bin/bash
docker run -dp 3000:3000 --name todo-app \
   -w /app -v "$(pwd):/app" \
   --network todo-app \
   -e MYSQL_HOST=mysql \
   -e MYSQL_USER=root \
   -e MYSQL_PASSWORD=dicoding \
   -e MYSQL_DB=todo-db \
   node:12-alpine \
   sh -c "yarn install && yarn run dev"