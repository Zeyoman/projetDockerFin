# Utiliser PHP 8.2 comme base
FROM php:8.2-fpm

# Installer des extensions PHP nécessaires
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Installer Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash && mv /root/.symfony/bin/symfony /usr/local/bin/symfony

# Définir le répertoire de travail
WORKDIR /var/www/html

# Copier les fichiers du projet
COPY . .

# Installer les dépendances Symfony
RUN composer install --no-dev --optimize-autoloader

# Exposer le port de Symfony
EXPOSE 9000

CMD ["php-fpm"]