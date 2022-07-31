#!/bin/zsh

echo "Clearing docker volume for mysql"
sudo rm -r /clusterfs/mysql_data
mkdir /clusterfs/mysql_data

echo "Setting env vars"
set -a; . ./.env; set +a
echo 'Deploying'
docker stack deploy --compose-file mysql_docker_compose.yml mysql