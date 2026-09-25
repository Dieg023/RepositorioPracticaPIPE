FROM python:3.12-slim

WORKDIR /app

# Copiar dependencias primero (mejor caché de Docker)
COPY app/requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código
COPY app/ .

# Comando por defecto
CMD ["python", "main.py"]
