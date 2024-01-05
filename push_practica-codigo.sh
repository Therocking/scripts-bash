#/bin/zsh

# Script para automatizar el pusheo de todo lo que he practicado en la semana a githup.

#cd ~/practicar-codigo
cd ~/scripts

git add .
git commit -m "$(date +"%d-%m-%Y %X")"
#git push origin main
