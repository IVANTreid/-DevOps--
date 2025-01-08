FROM python:3.10-slim
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей
COPY requirements.txt /app/
COPY package.json /app/


# Устанавливаем зависимости
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN npm install

# Копируем весь проект
COPY . /app/

# Строим приложение
RUN npm run build

# Устанавливаем `serve` глобально
RUN npm install -g serve

# Устанавливаем переменную окружения (если нужно)
ENV PYTHONPATH="/app"

# Открываем порт для сервера разработки
EXPOSE 8000

# Открываем порт для сервера
EXPOSE 3000

# Команда запуска
CMD ["python3", "myproject/manage.py", "runserver", "0.0.0.0:8000", "serve", "-s", "build"]
