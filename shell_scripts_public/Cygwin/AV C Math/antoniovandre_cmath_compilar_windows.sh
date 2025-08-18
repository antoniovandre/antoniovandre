#!/bin/bash

# Projeto Mathematical Ramblings.

# Script para compilar os sources do AV C Math, para Cygwin.

# Licença: Atribuição-NãoComercial-CompartilhaIgual (CC BY-NC-SA).

# Última atualização: 04-02-2023.

SOURCEDIR="${DIRETORIOTRABALHOC}Math/"
DESTDIR="${DIRETORIOTRABALHOC}"

# echo "Certifique-se de que esteja executando este script com privilégios de escrita em \"${SOURCEDIR}\" e \"${DESTDIR}\"."; read;

if ! [ -n "$AVCORES" ]; then echo -ne "Carregando antoniovandre_cores... "; if ! source /cygdrive/f/Antonio\ Vandré\ Pedrosa\ Furtunato\ Gomes/Cygwin/antoniovandre_cores &>> /dev/null; then echo -e "Ocorreu um erro.\n"; else echo -e "${AV_VERDE}Ok${AV_SEMCOR}.\n"; fi; fi

if ! hash gcc &>> /dev/null; then echo -e "${AV_VERMELHO}Software \"gcc\" não encontrado${AV_SEMCOR}."; exit 1; fi

DIR="${PWD}"
cd "${SOURCEDIR}"

OLDIFS="${IFS}"
IFS=$'\n'

for FILE in `ls -1 *.c`; do echo -n "Trabalhando em \"${FILE}\"... "; if gcc "${FILE}" -o "${FILE%%.*}.exe" -lm &>> /dev/null; then if mv "${FILE%%.*}.exe" "${DESTDIR}" &>> /dev/null; then if chmod +x "${DESTDIR}${FILE%%.*}.exe"; then echo -e "${AV_VERDE}Sucesso${AV_SEMCOR}."; else echo -e "${AV_VERMELHO}Ocorreu uma falha${AV_SEMCOR}."; exit 1; fi; else echo -e "${AV_VERMELHO}Ocorreu uma falha${AV_SEMCOR}."; exit 1; fi; else echo -e "${AV_VERMELHO}Ocorreu uma falha${AV_SEMCOR}."; exit 1; fi; done

IFS="${OLDIFS}"

echo -e "\n${AV_VERDE}Sucesso${AV_SEMCOR} ao compilar e por no path todos os softwares."

cd "${DIR}"
