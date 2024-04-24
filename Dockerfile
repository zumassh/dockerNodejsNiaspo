FROM node:14

# Создание директории приложения
WORKDIR /usr/src/app

COPY start.bash /usr/src/app/start.bash
COPY app.js /usr/src/app/app.js

# Делаем скрипт start.bash исполняемым и запускаем его
RUN chmod +x start.bash && ./start.bash

# Открытие порта 3000
EXPOSE 3000

# Запуск приложения
CMD ["node", "app.js"]
