# docker-grafana-graphite makefile

# Environment Varibles
CONTAINER = grafana

.PHONY: up

prep :
	mkdir -p \
		data/whisper \
		data/elasticsearch \
		data/grafana \
		log/graphite \
		log/graphite/webapp \
		log/elasticsearch

pull :
	docker-compose pull

up : prep pull
	docker-compose up -d

down :
	docker-compose down

start :
	docker-compose start

stop :
	docker-compose stop

shell :
	docker exec -ti $(CONTAINER) /bin/bash

tail :
	docker logs -f $(CONTAINER)
