#!/bin/bash

# Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

# Script gerador de funções para uso de "antoniovandre_funcaomaisproxima" e "antoniovandre_funcaomaisproxima_android", de Antonio Vandré Pedrosa Furtunato Gomes, para Cygwin.

# Várias opções devido às limitações do compilador/hardware.

# Licença de uso: Atribuição-NãoComercial-CompartilhaIgual (CC BY-NC-SA).

# Última atualização: 02-02-2023 (não considerando as alterações nas variáveis globais, comentação de linhas, e adaptações para continuidade quando houver crash).

ARQUIVOFUNCOES="${DIRETORIOTRABALHOC}/Math/antoniovandre_funcoes_windows.txt"

VALORMINIMO="-4"
VALORMAXIMO="4"
VALORPASSO="1"

echo -n "" > "${ARQUIVOFUNCOES}"

# Gerador de polinômios de grau zero.

for i in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i}),"; done >> "${ARQUIVOFUNCOES}"

# Gerador de polinômios do primeiro grau.

for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x+(${j}),"; done; done >> "${ARQUIVOFUNCOES}"

for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x+(${j}),"; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de polinômios do segundo grau.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^2+(${j})*x+(${k}),"; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^2+(${j})*x+(${k}),"; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de polinômios do terceiro grau.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^3+(${j})*x^2+(${k})*x+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^3+(${j})*x^2+(${k})*x+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de polinômios do quarto grau.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for m in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^4+(${j})*x^3+(${k})*x^2+(${l})*x+(${m}),"; done; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for m in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^4+(${j})*x^3+(${k})*x^2+(${l})*x+(${m}),"; done; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de polinômios do quinto grau.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for m in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for n in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^5+(${j})*x^4+(${k})*x^3+(${l})*x^2+(${m})*x+(${n}),"; done; done; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for m in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for n in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*x^5+(${j})*x^4+(${k})*x^3+(${l})*x^2+(${m})*x+(${n}),"; done; done; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções senoidais.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*sen((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*sen((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções cossenoidais.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*cos((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*cos((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções tangenciais.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*tg((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*tg((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções cotangenciais.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*cotg((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*cotg((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções tipo secante.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*sec((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*sec((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções tipo cossecante.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*cossec((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*cossec((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções modulares tipo afim.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*modulo((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})*modulo((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

# Gerador de funções tipo 1/x.

#for i in `seq $VALORMINIMO $VALORPASSO "-${VALORPASSO}" | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})/((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

#for i in `seq $VALORPASSO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for j in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for k in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do for l in `seq $VALORMINIMO $VALORPASSO $VALORMAXIMO | tr ',' '.'`; do echo -n "(${i})/((${j})*x+(${k}))+(${l}),"; done; done; done; done >> "${ARQUIVOFUNCOES}"

truncate -s -1 "${ARQUIVOFUNCOES}"
