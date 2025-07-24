# Inception

## 🐳 Présentation

Inception est un projet de création d’un environnement Docker complet, avec plusieurs services (Nginx, MariaDB, WordPress, phpMyAdmin) configurés de A à Z, sans utiliser d’images toutes faites hormis Alpine et Debian.

## ⚙️ Fonctionnalités principales

- Conteneurs Docker **créés avec des Dockerfiles personnalisés**
- Configuration manuelle des services :
  - **Nginx** en reverse proxy et serveur web
  - **MariaDB** avec initialisation automatique et gestion des utilisateurs
  - **WordPress** déployé en conteneur autonome
  - **phpMyAdmin** pour la gestion de la base de données
- Réseau Docker configuré pour la communication entre conteneurs
- Scripts d’entrypoint pour automatiser l’initialisation des services
- Volumes Docker pour persistance des données

## 🎁 Bonus

- **Adminer** comme alternative légère à phpMyAdmin
- Serveur **FTP** pour gestion des fichiers
- **Portainer** pour gestion graphique des conteneurs Docker
- Conteneur **Redis** pour cache et gestion de sessions
- **Static site** hébergé via Nginx

