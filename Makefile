install:
	docker-compose pull
	docker-compose build

start:
	docker-compose up -d

migrate:
	rake db:schema:load
	rake db:migrate

setup:
	rake db:setup

dummy:
	rake db:seed

sleep:
	sleep 10 # wait for database to do the actual setup

teardown:
	docker-compose down --volumes

bootup: install start sleep migrate dummy

api:
	ruby app.rb
