#!/bin/bash
# Script para fazer backup do banco de dados MySQL

echo "Iniciando backup do banco de dados..."

# Criar diretório de backup se não existir
mkdir -p backups

# Nome do arquivo de backup com timestamp
BACKUP_FILE="backups/backup-escola-$(date +%Y%m%d-%H%M%S).sql"

# Executar backup
docker exec mysql-estudos mysqldump -u aluno -p aluno123 escola > $BACKUP_FILE

echo "Backup concluído: $BACKUP_FILE"

# Listar backups existentes
echo "Backups disponíveis:"
ls -la backups/