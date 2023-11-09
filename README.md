# docker code

## Check docker and docker compose settings. If version information is displayed in the return value, it is OK

```docker -v```

```docker-compose -v```

## Download link

[Docker Download Link](https://docs.docker.jp/get-docker.html)

### make a directory

```mkdir front```

### Temporarily launch a container, create a react project in the container, and then destroy the container

```docker compose run --rm front sh -c "npx create-react-app app"```

### Start containers in the background of the terminal

```docker-compose up -d```

### Entering the Container

```docker compose exec front sh```

### Go to the application directory and start npm

```cd app && npm start```

### Stop launching containers

```docker compose down```
