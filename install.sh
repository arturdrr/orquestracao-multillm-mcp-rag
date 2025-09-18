#!/bin/bash
set -e

REPO_NAME="orquestracao-multillm-mcp-rag"

echo "Iniciando instalação do repositório: $REPO_NAME"

check_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "Erro: '$1' não encontrado. Por favor, instale e execute novamente."
    exit 1
  }
}

echo "Verificando dependências básicas..."
check_command git
check_command curl
check_command python3
check_command pip3

echo "Instalando dependências Python..."

if [ -f "requirements.txt" ]; then
  pip3 install -r requirements.txt
fi

echo "Instalação do $REPO_NAME concluída."