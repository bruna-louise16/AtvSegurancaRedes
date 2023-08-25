#!/bin/bash

# Obter uma lista de todos os usuários do sistema
usuarios=$(cut -d : -f 1 /etc/passwd)

# Loop pelos usuários e exibir a data do último login
for usuario in $usuarios; do
    ult_login=$(last -n 1 -w -F "$usuario" | awk '{print $3, $4, $5}')
    echo "Usuário: $usuario, Último Login: $ult_login"
done
