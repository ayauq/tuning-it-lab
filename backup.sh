#!/bin/bash
# Создаем папку для бэкапов, если её нет
mkdir -p ./backups
# Делаем слепок базы данных прямо из контейнера
sudo docker exec final_lab-db-1 pg_dump -U user lab_db > ./backups/backup_$(date +%Y%m%d_%H%M%S).sql
echo "Бэкап базы данных lab_db успешно создан в папке ./backups"
