# Тянем node с docker hub'a
FROM node:latest

# Рабочая директория
WORKDIR /app

# Копирование package.json в корневой каталог
COPY package*.json ./

# Установка npm
RUN npm install

# Копирование исходников приложения
COPY src /app

# Установка порта и запуск node скрипта
EXPOSE 8082
CMD [ "node", "index.js" ]