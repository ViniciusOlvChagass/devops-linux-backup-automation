#!/bin/bash

# Configurações
DATA=$(date +%Y-%m-%d_%H-%M-%S)
ORIGEM="$HOME/scripts"
DESTINO="$HOME/scripts/logs"
ARQUIVO="backup_$DATA.tar.gz"
LOG="$HOME/scripts/logs/backup.log"

# Criando o backup
echo "[$DATA] Iniciando backup..." >> $LOG

tar -czf "$DESTINO/$ARQUIVO" "$ORIGEM" 2>> $LOG

if [ $? -eq 0 ]; then
  echo "[$DATA] Backup concluído com sucesso: $ARQUIVO" >> $LOG
else
  echo "[$DATA] ERRO: Backup falhou!" >> $LOG
fi
