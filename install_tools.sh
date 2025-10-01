# Tools
#!/bin/bash
# Instala phpMyAdmin
sudo apt install phpmyadmin -y

# Instala Adminer
sudo mkdir -p /usr/share/adminer
sudo wget "https://www.adminer.org/latest.php" -O /usr/share/adminer/adminer.php
echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
sudo a2enconf adminer
sudo systemctl reload apache2

# Instala GoAccess
sudo apt install goaccess -y
