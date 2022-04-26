# https://docs.docker.com/compose/reference/overview

start: php mongo php-mongo angularjs intercomms ssl

.PHONY: php
php: # http://localhost
	docker-compose up -d php

.PHONY: mongo
mongo: # admin-ui http://localhost:81
	docker-compose up -d mongo

.PHONY: php-mongo
php-mongo: # http://localhost:82
	docker-compose up -d php-mongo

.PHONY: angularjs
angularjs: # http://localhost:83
	docker-compose up -d angularjs

.PHONY: intercomms
intercomms:
	docker-compose up intercomms

.PHONY: ssl
ssl: # http://localhost:84 with autoredirect to https://localhost
	docker-compose up -d ssl

.PHONY: update
update:
	docker-compose pull

.PHONY: logs
logs:
	docker-compose logs

.PHONY: clean
clean:
	docker-compose kill
	docker-compose rm -f
	docker system prune -f
