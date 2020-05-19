SHELL := /bin/bash

bu:
	docker-compose build --build

ug:
	docker-compose run --rm web bundle

dba:
	docker-compose run web rake db:create db:migrate

up:
	docker-compose up --build

cs:
	docker-compose exec web rails console

dw:
	docker-compose down

ter:
	docker exec -ti rubypoll_web_1 /bin/bash

deletepid:
	rm tmp/pids/server.pid 
