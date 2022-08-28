#!/bin/bash
 
 echo "Criando diretorios..."
 mkdir /publico
 mkdir /adm
 mkdir /ven
 mkdir /sec
 
 echo "Criando grupos de usuarios..."
 groupadd GRP_ADM
 groupadd GRP_VEN
 groupadd GRP_SEC
 
 echo "Criando usuários..."
 
 useradd elis -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
 useradd adriana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
 useradd ariany -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
 
 useradd lene -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
 useradd manoel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
 useradd placida -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
 
 
 useradd fernando -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
 useradd bruno -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
 useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
 
 
 echo "Especificando permissões dos diretórios..."
 
 chown root:GRP_ADM /adm
 chown root:GRP_VEN /ven
 chown root:GRP_SEC /sec
 
 
 chmod 770 /adm
 chmod 770 /ven
 chmod 770 /sec
 chmod 777 /publico
 
 echo "FIM..."