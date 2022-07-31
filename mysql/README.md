# mysql on docker swarm

## deploy
```bash
# clear dir
sudo rm -r /clusterfs/mysql_data
mkdir /clusterfs/mysql_data

#set env vars  
set -a; . ./.env; set +a
# deploy
docker stack deploy --compose-file mysql_docker_compose.yml mysql
```





# Errors

for clear restart; remove /clusterfs/mysql_data and then do docker

- ERROR 2003 (HY000): Can't connect to MySQL server on '0.0.0.0:3306' (111) -> wait and retry