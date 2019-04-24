docker container stop sf-food-trucks-webapp
docker container stop sf-food-trucks-es
docker container rm sf-food-trucks-webapp
docker container rm sf-food-trucks-es
docker volume rm sf-food-trucks-es-data
docker network rm sf-food-trucks-net
#docker image rm docker.elastic.co/elasticsearch/elasticsearch:6.3.2
#docker image rm sf-food-trucks-webapp