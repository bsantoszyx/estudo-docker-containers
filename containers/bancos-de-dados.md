# Bancos de Dados em Docker

## MySQL Container
- **Imagem:** mysql:8.0
- **Porta:** 3306
- **Banco:** escola
- **Usuário:** aluno / senha: aluno123

## Scripts Criados
- `scripts/criar-tabelas.sql` - Estrutura do banco
- `scripts/backup-banco.sh` - Script de backup

## Comandos Úteis MySQL

# Conectar ao MySQL
`docker exec -it mysql-estudos mysql -u aluno -paluno123 escola`

# Ver logs do container
`docker logs mysql-estudos`

# Fazer backup
`./scripts/backup-banco.sh`

# Parar o container MySQL
`docker stop mysql-estudos`

# Iniciar o container MySQL novamente
`docker start mysql-estudos`

# Remover o container (CUIDADO: apaga dados!)
`docker rm mysql-estudos`