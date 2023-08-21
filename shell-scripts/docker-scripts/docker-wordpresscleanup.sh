set -x;

reset;

clear;

docker-compose down

sudo rm -rf wp-content;

docker volume ls;

docker rm $(docker ps -a -q);

docker volume prune -f

docker volume rm softwareshinobi-wordpress-database;

docker volume ls

docker volume create --name=softwareshinobi-wordpress-database;

docker-compose up;
