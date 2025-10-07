# Image Python légère
FROM python:3.11-slim

# Dossier de travail dans l'image
WORKDIR /app

# Installer les dépendances (ici incluent pytest/ruff – OK pour le TP)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code
COPY app ./app

# Commande par défaut (juste un exemple)
CMD ["python", "-c", "from app.main import add; print(add(2,3))"]

