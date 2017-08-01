cd docker_flask
docker build -t myflask .
docker run --name demo_flask -d -p 80:80 myflask

cd ../
