FROM n8nio/n8n:latest

# Ajoute le client PostgreSQL (utile pour certaines opérations Supabase)
RUN apk add --no-cache postgresql-client

# Crée le répertoire de configuration
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Change d'utilisateur
USER node
WORKDIR /home/node

# Lancer n8n (Render injecte toutes les variables via render.yaml)
CMD ["n8n", "start"]
