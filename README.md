# How to create react project in Docker

## Check docker and docker compose settings. If version information is displayed in the return value, it is OK

```terminal
docker -v
```

```terminal
docker-compose -v
```

## Docker download link in case the version does not show up in the terminal

[Docker App Download Link](https://docs.docker.jp/get-docker.html)

## How to settings

### Launch docker application *no command

### make a directory for app

```terminal
mkdir front
```

### Temporarily launch a container, create a react project in the container, and then destroy the container

```terminal
docker compose run --rm front sh -c "npm create vite@latest -y ."
```

```terminal
## This may not be displayed
# Current directory is not empty. Remove existing files and continue?
y

## Press the down arrow key to move to the "react" item and press enter.
# Select a framework:
react


## Press the down arrow key to move to the "JavaScript" item and press enter.
# Select a variant:
javascript
```

### When the following error statement is displayed in the terminal

#### step1 - Open docker app settings

![step1](ref-images-for-readme/step1.png)

#### step2 - Click on the file share in Resources and add the project directory

![step2](ref-images-for-readme/step2.png)

#### Note that if you have a weak Internet connection, the project may stop with an error before it is completed. In this case, please refrain from downloading large files at the same time

### If able to do so, wait a few minutes

### Overwrite front/vite.config.js

```terminal
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    // External Publication
    host: '0.0.0.0',
    // You can change the port for starting up.
    port: 5173
  }
})
```

### Start containers in the background of the terminal

```terminal
docker-compose up -d
```

### Entering the Container

```terminal
docker compose exec front sh
```

### Command to go to the application directory and start npm

```terminal:terminal(in app)
npm install && npm run dev
```

#### If you want to use tailwindcss, run the following command after entering the container

```terminal
npm install -D tailwindcss postcss autoprefixer && npx tailwindcss init -p
```

### Command to stop a running container

```terminal
docker compose down
```
