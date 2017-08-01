docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)

rm -rf docker_bootstrap
rm -rf docker_static
