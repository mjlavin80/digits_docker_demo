mkdir docker_static
cd docker_static

echo "FROM nginx
COPY html /usr/share/nginx/html" > Dockerfile

mkdir html
cd html
echo "<h1>Hello, Digits&#33;</h1>" > index.html
cd ../


docker build -t mynginx .
docker run --name demo -d -p 80:80 mynginx

cd ../
