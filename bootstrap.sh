set -e

LARADOCK_DIR=`pwd`
API_DIR=$(cd ../tisaude-api && pwd)

echo "Diretorios:"
echo "LARADOCK_DIR: ${LARADOCK_DIR}"
echo "API_DIR: ${API_DIR}"

echo ""
echo "Evironments: "
cp  ${LARADOCK_DIR}/.env.example ${LARADOCK_DIR}/.env
cp  ${API_DIR}/.env.example ${API_DIR}/.env
echo ""

echo "Criando Containers"
docker-compose up -d nginx mysql
echo ""

echo "Registrando WORKSPACE"
WORKSPACE_NAME=`docker ps --format "{{.Names}}" --filter ancestor=tisaude_workspace`
WORKSPACE_MYSQL=`docker ps --format "{{.Names}}" --filter ancestor=tisaude_mysql`

MYSQL_USER="root"
MYSQL_PASS="root"

echo "CRIANDO BD conselhos"
docker exec -i ${WORKSPACE_MYSQL} /bin/sh -c 'mysql -u '${MYSQL_USER}' -p'${MYSQL_PASS}' < ./docker-entrypoint-initdb.d/createdb.sql'

echo "Executando configurações e migrations da API"
docker exec -i -w /var/www/tisaude-api ${WORKSPACE_NAME} composer install
docker exec -i -w /var/www/tisaude-api ${WORKSPACE_NAME} php artisan migrate:fresh --seed
docker exec -i -w /var/www/tisaude-api ${WORKSPACE_NAME} php artisan storage:link
docker exec -i -w /var/www/tisaude-api ${WORKSPACE_NAME} php artisan jwt:secret

echo ""
echo "Dev setup done!"
