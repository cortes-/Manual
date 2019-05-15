docker network create pg
docker container run --name pg --network pg --env-file ./Postgres/db.env postgres:latest
docker container run --name webapp --network pg -p 80:80 --env-file ./Nginx/app.env jfahrer/lb:latest

