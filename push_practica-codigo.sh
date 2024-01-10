#!/bin/zsh

# Script para automatizar el pusheo de todo lo que he practicado en la semana a githup.

cd ~/practicar-codigo

git add .
git commit -m "$(date +"%d-%m-%Y %X")"
git push -u origin main
