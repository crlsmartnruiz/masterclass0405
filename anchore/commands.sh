docker-compose exec api anchore-cli system status

docker-compose exec api anchore-cli system feeds list

docker-compose exec api anchore-cli system wait

docker-compose exec api anchore-cli image add docker.io/library/debian:7

docker-compose exec api anchore-cli image wait docker.io/library/debian:7

docker-compose exec api anchore-cli image content docker.io/library/debian:7 os

docker-compose exec api anchore-cli image vuln docker.io/library/debian:7 all

docker-compose exec api anchore-cli evaluate check docker.io/library/debian:7

docker-compose exec api anchore-cli image add docker.io/library/nginx:latest


cd express;docker build -t carlosmartinruiz/express-ubuntu .
#docker run -p 3000:3000 --rm --name express-ubuntu carlosmartinruiz/express-ubuntu

cd express;docker build -t carlosmartinruiz/express-alpine --file alpine.Dockerfile . --no-cache
#docker run -p 3000:3000 --rm --name express-alpine carlosmartinruiz/express-alpine


docker cp express/Dockerfile anchore_api_1:/Dockerfile

docker-compose exec api anchore-cli image add carlosmartinruiz/ubuntu-node --dockerfile=/Dockerfile --force

docker-compose exec api anchore-cli image add carlosmartinruiz/express-ubuntu
docker-compose exec api anchore-cli image vuln carlosmartinruiz/express-ubuntu all

