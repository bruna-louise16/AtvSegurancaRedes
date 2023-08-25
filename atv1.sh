#!/bin/bash

# Número de pastas a serem criadas
num_pastas=5000

# Contador de pastas criadas
contador=0

# Loop para criar as pastas
while [ $contador -lt $num_pastas ]
do
    # Gerar um nome aleatório do dicionário Aurélio (substitua com sua própria lógica)
    nome=$(shuf -n 1 aurelio.txt)  # Supondo que aurelio_dict.txt contém uma lista de palavras do dicionário

    # Criar a pasta com o nome aleatório e atribuir permissão de leitura
    mkdir "$nome"
    chmod 444 "$nome"

    # Incrementar o contador
    contador=$((contador + 1))
done

echo "Criação de pastas concluída com sucesso."
