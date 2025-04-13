#Usar uma imagem base do Python
FROM python:3.9-slim
# Definir o diretório de trabalho
WORKDIR /app
# Copiar o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .
# Instalar as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt
# Copiar o restante do código da aplicação para o diretório de trabalho
COPY . .
# Expor a porta 5000 para acesso externo
EXPOSE 5000
# Definir a variável de ambiente para o Flask
CMD [ "python", "app.py" ]
