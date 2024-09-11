#!/bin/bash
set -e
echo "Starting WAHA..."

docker run -d \
    --restart=always \
    --name waha \
    -p 3000:3000/tcp \
    
    -v ./.sessions:/app/.sessions \
    -v ./.media:/app/.media \
    --env WHATSAPP_API_KEY=321 \
