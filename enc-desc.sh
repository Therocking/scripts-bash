# script para encriptar o desecriptar archivos
 
# Options
encrypt='enc'
decrypt='dec'

# Arguments
opt=$1
file=$2
valueEnc=$3

if [ -z $file ]; then
	echo ''
	echo 'El segundo argumento no puede ir vacío. Debes de escribir el nombre del archivo.'
	exit
fi

case $opt in
	$encrypt)
		echo $valueEnc > file.txt

		openssl enc -aes-256-cbc -pbkdf2 -salt -iter 100 -in file.txt -out $file

		rm file.txt
		;;
	$decrypt)
		openssl enc -d -aes-256-cbc -pbkdf2 -iter 100 -in $file
		;;
	*)
		echo ''
		echo 'Error: valor no esperado. Elije una de las opciones para continuar.'
		echo -e '\n'

		echo 'Optiones:'
		echo 'enc: encriptar | desc: desencriptar'
		;;
esac;
