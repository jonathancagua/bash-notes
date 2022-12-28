# bash-notes

Practicando bash

## editando la consola:
    vim .vimrc

## cambiando los permisos
    chmod 764 1_utility_postgres.sh 

## ejecutando el bash
Se ejecuta de dos maneras.<br>

    (base) MacBook-Pro:bash-notes j$ bash 1_utility_postgres.sh 
    hola mundo

    (base) MacBook-Pro:bash-notes j$ ./1_utility_postgres.sh 
    hola mundo

    (base) MacBook-Pro:bash-notes j$ sh 1_utility_postgres.sh 
# Variables
## Variables de entorno
Ayudan a obtener infromacion del sistema, almacenar informacion temporal y modificar su informacion. Existen 2 tipos:

### Variables Globales: 
Son visibles desde el shell que lo creo o desde cuaquier hijo de esa shell.
### Variables Locales: 
Son visibles solo desde el shell que la creo.
### Variable Persistente: 
Para crear una de estas es necesario introducirla en el archivo `/etc/profile` pero en el caso de los derivados debian si revisamos un poco el script nos damos cuenta que llama a otro archivo llamado `/etc/bash.bashrc` en el cual podemos crear las variables de entorno persistentes.
Por eso no funciona llamar la variable declarada en /etc/profile desde un shell
## Variables de usuario
Son las variables que se corren dentro de un script como en cualquier programa de computadora C, C++ o Java
### Variable global: 
Se puede usar desde otro script siempre y cuando sea llamado desde el script que contiene la variable.
### Variable local:
Solo tiene alcance en el script que la creo.

    (base) MacBook-Pro:bash-notes j$ sudo vim /etc/profile

```bash
# System-wide .profile for sh(1)

if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
	[ -r /etc/bashrc ] && . /etc/bashrc
fi

#variable de entorno
COURSE_NAME=Programacion bash
export COURSE_NAME 
```

Luego escribir `wq!`

