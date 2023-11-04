# Script to encrypt or decrypt values or values in a file
 
# Options
encrypt='enc'
decrypt='dec'

# Arguments
opt=$1 # Options. Must be enc or dec
file=$2 # File to save the value encrypt or file to decrypt
valueEnc=$3

if [ -z $file ]; then
	echo -e '\nDebe pasar como segundo parámetro la acción a realizar.\n'
	
	echo 'Optiones:'
	echo 'enc: encriptar | dec: desencriptar'
	exit
fi

isFile() {
	if [ -f $valueEnc ]; then # verify if value is a file
		cat $valueEnc >> file.txt
	else
		echo $valueEnc > file.txt
	fi
}

case $opt in
	$encrypt)

		isFile # Evalute if the value to enc is a file

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
		echo 'enc: encriptar | dec: desencriptar'
		;;
esac;
