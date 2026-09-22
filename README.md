# Estudo Docker - Containers

## Sobre
Este repositório documenta meu aprendizado sobre Docker e containerização.

**Autor:** Bruno Santos Lima
**Curso:** Técnico em Segurança Cibernética (Instituto Federal Fluminense)
**Disciplina:** Banco de Dados
**Data:** 22/09/2026

## O que estou aprendendo
- Conceitos fundamentais do Docker
- Como criar e gerenciar containers
- Trabalhar com imagens Docker
- Configurar bancos de dados em containers
- Usar Docker Compose para aplicações multi-container

## Estrutura do Projeto
- `containers/` - Dockerfiles e configurações de containers
- `compose/` - Arquivos docker-compose.yml
- `scripts/` - Scripts de configuração e inicialização
- `README.md` - Este arquivo de documentação

## Status do Estudo
- [x] Tarefa 1 - Primeiro container
- [x] Tarefa 2 - Container personalizado
- [x] Tarefa 3 - Banco de dados
- [x] Tarefa 4 - Docker Compose
- [x] Tarefa 5 - Aplicação completa

## 🧐 Reflexão Final

### 1. Qual a principal vantagem de usar containers com Docker em vez de instalar um banco de dados e um servidor web diretamente na sua máquina?
A principal vantagem é o **isolamento de ambiente e a portabilidade**. Usar containers evita a poluição do sistema operacional host com dependências, bibliotecas e serviços em segundo plano, impedindo conflitos de versões (ex.: duas versões de MySQL na mesma máquina). Além disso, garante o comportamento conhecido como "funciona na minha máquina", permitindo subir ou destruir serviços inteiros rapidamente sem deixar rastros no sistema.

### 2. Explique com suas palavras o propósito de um `Dockerfile`. Por que ele é tão importante para a reprodutibilidade de ambientes?
O `Dockerfile` é o script/receita de bolo que define passo a passo como uma imagem Docker deve ser construída. Ele é essencial para a reprodutibilidade porque padroniza todo o ambiente (sistema operacional base, dependências, variáveis de ambiente e comandos de inicialização). Qualquer pessoa ou servidor de CI/CD que executar a compilação desse `Dockerfile` terá exatamente a mesma imagem e o mesmo comportamento da aplicação, independentemente do sistema operacional hospedeiro.

### 3. Em que cenário o Docker Compose se torna essencial? Por que não usar apenas múltiplos comandos `docker run`?
O Docker Compose se torna essencial quando a aplicação envolve **múltiplos containers interdependentes** (como uma API, um banco de dados e um servidor web). Usar apenas comandos `docker run` exige que você configure manualmente redes, volumes, variáveis e ordem de inicialização via linha de comando para cada container de forma repetitiva e propensa a erros. O Docker Compose centraliza toda essa arquitetura em um único arquivo `docker-compose.yml`, permitindo subir toda a infraestrutura com apenas o comando `docker compose up`.

### 4. Qual a importância dos volumes do Docker (como o que usamos para o banco de dados MySQL)? O que aconteceria com os dados se não usássemos um volume?
Os containers por padrão são **efêmeros**, ou seja, qualquer dado gravado dentro do sistema de arquivos de um container é perdido quando ele é removido. Os volumes são importantes porque fornecem **persistência de dados**, mapeando um diretório dentro do container para um local mantido no host. Sem o uso de volumes no MySQL, todas as tabelas, registros e bancos criados seriam permanentemente apagados ao parar ou remover o container.

### 5. Como o uso de containers pode facilitar o trabalho em equipe em um projeto de desenvolvimento de software?
Containers garantem que **todos os desenvolvedores trabalhem em ambientes idênticos**, eliminando discrepâncias causadas por diferenças em sistemas operacionais ou versões instaladas de ferramentas (node, python, bancos, etc.). Além disso, aceleram o *onboarding* de novos membros na equipe, pois basta clonar o repositório e rodar o container/compose para ter o projeto rodando em minutos, sem necessidade de configurações manuais demoradas.