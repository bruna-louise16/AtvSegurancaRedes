#!/bin/bash

# Nome da interface de rede
interface="eth0"

# Número da VLAN
vlan_id=600

# Endereço IP e máscara
ip_address="10.11.12.10/24"

# Adicionar a VLAN na interface de rede
ip link add link $interface name ${interface}.${vlan_id} type vlan id $vlan_id

# Ativar a interface VLAN
ip link set dev ${interface}.${vlan_id} up

# Configurar o endereço IP na interface VLAN
ip addr add $ip_address dev ${interface}.${vlan_id}

echo "VLAN adicionada e configurada com sucesso:"
echo "Interface VLAN: ${interface}.${vlan_id}"
echo "Endereço IP: $ip_address"
