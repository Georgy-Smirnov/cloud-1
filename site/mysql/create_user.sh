#!/bin/bash
echo "CREATE USER 'kjaco'@'%' IDENTIFIED BY '123';"| mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON *.* TO 'kjaco'@'%';"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password