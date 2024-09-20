# Use uma imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo requirements.txt e instale as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie os arquivos principais do aplicativo
COPY main.py .
COPY test_main.py .

# Exponha a porta que o aplicativo usará
EXPOSE 8080

# Comando para rodar o aplicativo
CMD ["python", "main.py"]

