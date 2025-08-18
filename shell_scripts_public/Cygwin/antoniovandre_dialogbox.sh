#!/bin/bash.exe

# Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

# Caixa de diálogo, para Cygwin.

# Última atualização: 21-09-2023.

if ! hash mintty; then echo "Software \"mintty\" não encontrado."; exit 1; fi

if ! hash antoniovandre_dialogbox_core.sh; then echo "Software \"antoniovandre_dialogbox_core.sh\" não encontrado."; exit 1; fi

mintty -e antoniovandre_dialogbox_core.sh $1
