printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n\033[32m Stopping and clenaning docker environment \033[0m"
printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker swarm leave --force
docker system prune --all --force
rm -rf /var/portainer/data/*

printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n\033[32m Initializing docker environment \033[0m"
printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker swarm init
docker network create --driver=overlay --attachable shared-proxy

bash start.sh