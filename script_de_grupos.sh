#!/bin/bash

echo "Criando Grupos"

mkdir /publico
mkdir /adm
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd Ruan -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GGRP_ADM
useradd Kaique -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GGRP_ADM
useradd José -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GGRP_ADM

useradd Ana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN
seradd Adriele -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN
seradd Lais -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN

seradd Richard -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_SEC
seradd Renata -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_SEC
seradd Manuel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_SEC
echo "Deifnindo permissões dos diretórios"


chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /sec
chmod 770 /ven
chmod 770 /adm
chmod 777 /publico

echo "Fim"
