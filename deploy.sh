#!/bin/bash

# Скрипт для деплоя презентации на Netlify Drop

echo "🚀 Деплой презентации на Netlify Drop..."
echo ""

FILE="Анализ_рынка_презентация.html"

if [ ! -f "$FILE" ]; then
    echo "❌ Файл $FILE не найден!"
    exit 1
fi

echo "📦 Загружаю файл на Netlify Drop..."
echo ""
echo "Откройте в браузере: https://app.netlify.com/drop"
echo ""
echo "Или используйте curl (если установлен):"
echo ""
echo "curl -X POST -H 'Content-Type: application/octet-stream' \\"
echo "  --data-binary @$FILE \\"
echo "  https://api.netlify.com/api/v1/sites"
echo ""
echo "Для автоматического деплоя нужен Netlify CLI:"
echo "npm install -g netlify-cli"
echo "netlify deploy --prod --dir=. --file=$FILE"

