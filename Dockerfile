# Utiliser l'image officielle Nginx
FROM nginx:alpine

# Copier le fichier de configuration Nginx personnalisé
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers du site web
COPY index.html /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]