#!/bin/bash

# user groups
groupadd admin_group
groupadd sales_group
groupadd security_group

# users
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G admin_group
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G admin_group
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G admin_group

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G sales_group
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G sales_group
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G sales_group

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G security_group
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G security_group
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G security_group

# directories
mkdir /public
mkdir /admin
mkdir /sales
mkdir /security

# directories permissions
chown root:admin_group /admin
chown root:sales_group /sales
chown root:security_group /security

chmod 770 /admin
chmod 770 /sales
chmod 770 /security
chmod 777 /public

echo "Script finished succesfully"