# Utilise une image officielle et stable de n8n
FROM n8nio/n8n:1.44.0

# Création du dossier .n8n et configuration des droits
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Basculer sur l'utilisateur node
USER node

# Définir le répertoire de travail
WORKDIR /home/node

# Commande de démarrage de n8n
CMD ["n8n", "start"]
