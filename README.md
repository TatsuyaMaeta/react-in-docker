# docker code

## Check docker and docker compose settings. If version information is displayed in the return value, it is OK

```docker -v```

```docker-compose -v```

## Download link

[Docker Download Link](https://docs.docker.jp/get-docker.html)

## How to settings

### Launch docker application *no command

### make a directory

```mkdir front```

### Temporarily launch a container, create a react project in the container, and then destroy the container

```docker compose run --rm front sh -c "npx create-react-app app"```

### When the following error statement is displayed in the terminal

#### step1 - Open docker app settings

![step1](ref-images-for-readme/step1.png)

#### step2 - Click on the file share in Resources and add the project directory

![step2](ref-images-for-readme/step2.png)

#### Note that if you have a weak Internet connection, the project may stop with an error before it is completed. In this case, please refrain from downloading large files at the same time

#### If you want to create a project in typescript, use the following command

```docker compose run --rm front sh -c "npx create-react-app app --template typescript"```

### If able to do so, wait a few minutes

### Start containers in the background of the terminal

```docker-compose up -d```

### Entering the Container

```docker compose exec front sh```

### Command to go to the application directory and start npm

```terminal:terminal(in app)
cd app && npm start
```

#### If you want to use tailwindcss, run the following command after entering the container

```terminal
npm install -D tailwindcss postcss autoprefixer && npx tailwindcss init -p
```

### Command to stop a running container

```terminal
docker compose down
```
