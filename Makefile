SHELL := /bin/bash

bu:
	docker-compose build web

ug:
	docker-compose run --rm web bundle

dba:
	docker-compose run web rake db:create db:migrate

up:
	docker-compose up --build

cs:
	docker-compose exec web rails console

dw:
	docker-compose down -v