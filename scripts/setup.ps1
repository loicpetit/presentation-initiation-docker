# Creation image
docker build -t sf-food-trucks-webapp ../flask-app

# Creation réseau
docker network create sf-food-trucks-net

# Creation volume
docker volume create sf-food-trucks-es-data

# Création conteneurs
docker run -d --name sf-food-trucks-es --volume sf-food-trucks-es-data:/usr/share/elasticsearch/data -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.3.2
docker run -d --name sf-food-trucks-webapp -p 5000:5000 sf-food-trucks-webapp

# Ajout au réseau
docker network connect sf-food-trucks-net sf-food-trucks-webapp
docker network connect --alias es sf-food-trucks-net sf-food-trucks-es
