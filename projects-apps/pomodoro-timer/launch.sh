reset

clear

echo "setting up the pomodoro timer"

docker network create network-software-shinobi

docker-compose down

docker-compose up -d

reset

clear

echo
echo "done setting up the pomodoro server"

docker stats
