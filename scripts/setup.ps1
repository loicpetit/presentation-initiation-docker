docker build -t sf-food-trucks-webapp ../flask-app
docker run -d --name sf-food-trucks-es -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.3.2
docker run -d --name sf-food-trucks-webapp sf-food-trucks-webapp
