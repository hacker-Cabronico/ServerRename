# ServerRename
Script para cambiar el nombre a un servidor Ubuntu

Fue escrito en Windows, en ciertas maquinas no se ejecuta, dando errores de lectura.

Para solucionarlo después de dar permisos hay que ejecutar el siguiente comando en la terminal 
    sed 's/\r$//g' ServerRename.sh

Este comando elimina todos los retornos de carro, lo que puede ser necesario para que el script sea interpretado correctamente en sistemas Linux.
