# Install and start nginx
sudo apt-get -y install nginx
sudo service nginx start

# Configure nginx
unlink /etc/nginx/sites-enabled/default
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# Clean /var/www
sudo rm -Rf /var/www

# Symlink /var/www to our static site source files
ln -s /vagrant/src /var/www