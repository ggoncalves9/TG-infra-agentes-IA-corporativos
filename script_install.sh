#!/usr/bin/env bash
set -e

echo ">>> Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo ">>> Instalando Docker Engine + Compose..."
curl -fsSL https://get.docker.com | sudo bash -s -- -y
sudo usermod -aG docker "$USER"

echo ">>> Instalando Docker Compose Plugin..."
sudo apt-get update -y
sudo apt-get install -y docker-compose-plugin

# echo ">>> Clonando repositório..."
# git clone https://github.com/seu-usuario/ai-agents-mvp.git
# cd ai-agents-mvp

# echo ">>> Copiando .env e subindo stack..."
# cp .env.sample .env
# docker compose up -d --build

echo ">>> Pronto! Acesse http://localhost:5678"
