install:
	docker-compose pull
	docker-compose build

start:
	docker-compose up -d

# dummy:
# 	docker-compose exec be make initDb