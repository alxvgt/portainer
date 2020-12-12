printf "\n\033[31m--------------------------------------------------------------------------\033[0m"
printf "\n\033[31m Stopping and clenaning docker environment \033[0m"
printf "\n\033[31m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker swarm leave
docker system prune --all --force


printf "\n\033[31m--------------------------------------------------------------------------\033[0m"
printf "\n\033[31m Initializing docker environment \033[0m"
printf "\n\033[31m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker swarm init
docker network create --driver=overlay --attachable shared-proxy

printf "\n\033[31m--------------------------------------------------------------------------\033[0m"
printf "\n\033[31m Run portainer \033[0m"
printf "\n\033[31m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker stack deploy portainer --compose-file docker-compose.yml
echo "\n You can access to portainer here : http://418.ovh:9000\n"