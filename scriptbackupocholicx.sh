#indicacion del shell para en que se debe ejecutar
#!/bin/bash
#ocholicx
#Se asigna la fecha actual y ponemos variable filename donde se respaldara
fecha='date '+%Y%m%d''uq
filename=/home/respaldos/respaldos$fecha.tar

#Nos vamos a la carpeta que queremos respaldar 
cd /home/ocholicx/Desktop/scriptspython

#vamos a respaldar todos nuestros archivos phyton que terminen con .sh 
tar cf $filename 'find . -name "*.sh"'
if test -t $filename
then
#si el archivo tar fue creado se realiza la compresion
gzip -9 $filename
fi
