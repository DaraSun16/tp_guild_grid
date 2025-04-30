# mon_projet_php/Dockerfile
# Utilise l'image officielle PHP avec Apache
FROM php:8.4-apache 
 # Installe les extensions PHP nécessaires 
 RUN docker-php-ext-install pdo pdo_mysql 
 RUN apt-get update && apt-get upgrade -y && apt-get clean
 # Expose le port 80 pour accéder au serveur web 
 EXPOSE 80