FROM python:3.10-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл со списком зависимостей и устанавливаем их + Gunicorn
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt gunicorn


# Копируем остальной код
COPY . .

RUN chmod +x entrypoint.sh

# Открываем порт (по умолчанию 5000 для Flask)
EXPOSE 1190

# Запускаем Gunicorn, указывая модуль и приложение (app:app)
ENTRYPOINT ["./entrypoint.sh"]

