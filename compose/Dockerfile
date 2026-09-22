# Usar uma imagem base oficial do Python
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo de dependências e instalar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante dos arquivos da aplicação
COPY . .

# Expor a porta que a aplicação Flask usa
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]