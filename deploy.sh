#!/bin/bash
echo "--- Запуск процесса обновления проекта ---"

# 1. Стягиваем изменения (если используешь Git)
# git pull origin main

# 2. Пересобираем бэкенд и запускаем контейнеры
echo "Пересборка образов и запуск..."
sudo docker compose down
sudo docker compose up --build -d

# 3. Проверка статуса
echo "Проверка запущенных сервисов:"
sudo docker ps

echo "--- Деплой завершен успешно! ---"
