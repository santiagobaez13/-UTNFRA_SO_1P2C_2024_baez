#!/bin/bash

# Crear el directorio
mkdir -p /home/vagrant/Estructura_Asimetrica

# Crear las carpetas correo y clienteE
mkdir -p /home/vagrant/Estructura_Asimetrica/correo
mkdir -p /home/vagrant/Estructura_Asimetrica/cliente

# Crear las carpetas cartas 
for i in {1..100}; do
    mkdir -p /home/vagrant/Estructura_Asimetrica/correo/cartas_$i
    mkdir -p /home/vagrant/Estructura_Asimetrica/cliente/cartas_$i
done

# Crear las carpetas carteros 
for j in {1..10}; do
    mkdir -p /home/vagrant/Estructura_Asimetrica/correo/carteros_$j
done

# Validar la estructura
tree /home/vagrant/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4



















