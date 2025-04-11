#!/bin/bash

echo "Criando Grupos"

mkdir /publico
mkdir /adm
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GGRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GGRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GGRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN
seradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN
seradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN

seradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_SEC
seradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_SEC
seradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_SEC
echo "Especificando permissões dos diretórios"


chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /sec
chmod 770 /ven
chmod 770 /adm
chmod 777 /publico

echo "Fim..."
