#!/bin/bash

# Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

# Script de captura dos resultados da Lotofácil entre dois números fornecidos como os primeiros dois argumentos, o primeiro argumento menor que o segundo argumento, com o terceiro argumento o número de números entre os dois primeiros argumentos, e o quarto argumento o arquivo CSV com números de cada resultado em ordem crescente, números separados por vírgula, e resultados separados por linhas, de onde serão lidos todos os resultados. Para Cygwin.

# Licença: Atribuição-NãoComercial-CompartilhaIgual (CC BY-NC-SA).

# Última atualização: 21-01-2022.

if (! expr "${1}" &>> /dev/null) || (! expr "${2}" &>> /dev/null) || (! expr "${3}" &>> /dev/null) || (! find "${4}"); then echo "Erro na validação dos argumentos do script."; exit 1; fi

if [ $(expr "${1}") -ge $(expr "${2}") ]; then echo "Erro na validação dos argumentos do script."; exit 1; fi

n="0"

while read I; do R="${I#*${1}}"; R="${R%%$2*}"; if [ "$(echo -n ${R} | wc -c)" == "$(expr 3 \* ${3} + 1)" ]; then n=$(expr "${n}" + 1); awk "/${I}/{i++}i==${n}" "${4}"; fi; done < "${4}"

unset n &>> /dev/null
unset R &>> /dev/null

exit 0
