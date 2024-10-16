#!/bin/bash

# Creao grupetes
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Creao y asigno a los grupos
sudo useradd -c "Alumno 1" -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -c "Alumno 2" -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -c "Alumno 3" -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -c "Profesor" -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1

# Establecer contraseñas
echo "p1c2_2024_A1:pepe" | sudo chpasswd
echo "p1c2_2024_A2:pepe" | sudo chpasswd
echo "p1c2_2024_A3:pepe" | sudo chpasswd
echo "p1c2_2024_P1:pepe" | sudo chpasswd

# Ajustar los permisos en las carpetas ya existentes
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno1
sudo chmod 750 /Examenes-UTN/alumno1

# Para /Examenes-UTN/alumno2
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno2
sudo chmod 700 /Examenes-UTN/alumno2

# Para /Examenes-UTN/alumno3
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno3
sudo chmod 775 /Examenes-UTN/alumno3

# Para /Examenes-UTN/profesores
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 770 /Examenes-UTN/profesores

#  archivo "validar.txt" en las carpetas de cada uno
sudo bash -c 'whoami > /Examenes-UTN/alumno1/validar.txt'
sudo bash -c 'whoami > /Examenes-UTN/alumno2/validar.txt'
sudo bash -c 'whoami > /Examenes-UTN/alumno3/validar.txt'
sudo bash -c 'whoami > /Examenes-UTN/profesores/validar.txt'

