FROM python:3.14-slim

WORKDIR /app

COPY pyproject.toml .

RUN pip install --no-cache-dir .

# 1. Copia todo el contenido del proyecto (necesario si pyproject.toml usa src/)
COPY . .

# 2. Apunta directamente al archivo ejecutable
CMD ["python", "src/main.py"]