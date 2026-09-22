#!/bin/bash
# Script para monitorar o container MySQL

echo "=== Status do Container MySQL ==="
docker ps -f name=mysql-estudos

echo ""
echo "=== Uso de Recursos ==="
docker stats mysql-estudos --no-stream

echo ""
echo "=== Últimas 10 linhas do log ==="
docker logs mysql-estudos --tail 10

echo ""
echo "=== Testando Conexão ==="
docker exec mysql-estudos mysql -u aluno -paluno123 -e "SELECT 'Conexão OK!' as status;"

echo ""
echo "=== Espaço em Disco do Container ==="
docker exec mysql-estudos df -h