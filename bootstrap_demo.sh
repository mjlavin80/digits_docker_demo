mkdir docker_bootstrap
cd docker_bootstrap

echo "FROM nginx
COPY html /usr/share/nginx/html" > Dockerfile

git clone https://github.com/mjlavin80/bootstrap3_hello_world
mv bootstrap3_hello_world html
cd html
cd ../

docker build -t mynginx_boot .
docker run --name demo_boot -d -p 80:80 mynginx_boot

cd ../
