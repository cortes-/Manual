docker network create pg
docker container run --name pg --network pg --env-file ./Postgres/db.env postgres:latest
docker container run --name webapp --network pg --env-file ./Nginx/app.env jfahrer/lb:latest
