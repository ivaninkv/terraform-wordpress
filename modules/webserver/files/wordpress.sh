#!/bin/bash
cd /tmp
sudo mv site.conf /etc/apache2/sites-available/site.conf
sudo a2ensite site
sudo a2dissite 000-default
sudo systemctl reload apache2
ansible-galaxy install oefenweb.wordpress
ansible-playbook playbook.yml
sudo systemctl restart apache2
