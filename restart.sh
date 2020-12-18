printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n\033[32m Remove stack portainer \033[0m"
printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker stack rm portainer

printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n\033[32m Deploy stack portainer \033[0m"
printf "\n\033[32m--------------------------------------------------------------------------\033[0m"
printf "\n"
docker stack deploy portainer --compose-file docker-compose.yml
printf "\n\n You can access to portainer here : http://418.ovh:9000 or https://portainer.418.ovh\n"