#!/bin/bash

# Função para gerar senha aleatória
generate_random_password() {
    tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w 12 | head -n 1
}

# Verificar se o grupo "adms" existe e, se não existir, criá-lo
if ! grep -q '^adms:' /etc/group; then
    groupadd adms
fi

# Adicionar os novos usuários
useradd -m user1
useradd -m user2

# Gerar senhas aleatórias
password1=$(generate_random_password)
password2=$(generate_random_password)

# Definir senhas para os usuários
echo "user1:$password1" | chpasswd -e
echo "user2:$password2" | chpasswd -e
