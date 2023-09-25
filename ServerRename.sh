#!/bin/bash

# Obtener el nombre actual del servidor
nombre_actual=$(hostname)

# Solicitar al usuario el nuevo nombre
read -p "Ingrese el nuevo nombre del servidor: " nuevo_nombre

# Verificar si el nuevo nombre es diferente al actual
if [ "$nuevo_nombre" != "$nombre_actual" ]; then
    # Cambiar el nombre del host temporalmente
    sudo hostnamectl set-hostname "$nuevo_nombre"

    # Cambiar el nombre en el archivo /etc/hostname
    sudo sed -i "s/$nombre_actual/$nuevo_nombre/g" /etc/hostname

    # Cambiar el nombre en el archivo /etc/hosts
    sudo sed -i "s/$nombre_actual/$nuevo_nombre/g" /etc/hosts

    # Reiniciar el servidor
    sudo reboot

    echo "El nombre del servidor se cambiará a $nuevo_nombre después del reinicio."
else
    echo "El nuevo nombre es igual al nombre actual ($nombre_actual). No se realizará ningún cambio."
fi
