printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n\033[32m Run portainer \033[0m"
printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker stack deploy portainer --compose-file docker-compose.yml
printf "\n You can access to portainer here : http://418.ovh:9000\n"