# Usando uma imagem base do Nginx
FROM nginx:alpine

# Informações sobre o criador (substitua pelos seus dados)
LABEL maintainer="seu.email@exemplo.com"
LABEL description="Minha primeira aplicação web em Docker"
LABEL version="1.0"

# Copia o arquivo HTML para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/

# Informa que o container usará a porta 80
EXPOSE 80

# Comando padrão (já definido na imagem base do Nginx)
CMD ["nginx", "-g", "daemon off;"]