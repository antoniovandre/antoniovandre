// Projeto Mathematical Ramblings.

// Retorna a avaliação (eval) da expressão passada como argumento, source otimizado para scripts.

// Licença de uso: Atribuição-NãoComercial-CompartilhaIgual (CC BY-NC-SA).

// Última atualização: 01-04-2026. Não considerando alterações em variáveis globais.

#include "../antoniovandre.c"

#define EVAL_MENSAGEM_USO "Use \"antoniovandre_eval_script <EXPRESSÃO VÁLIDA>\"."

int main (int argc, char *argv [])
	{
	char * strf;
	char * argvb;
	int precisao = 16;

	argvb = (char *) malloc (TAMANHO_BUFFER_PHRASE);
	antoniovandre_copiarstring (argvb, STRINGVAZIA);
	antoniovandre_copiarstring (argvb, argv [NUMEROUM]);
	strf = antoniovandre_eval (argvb, precisao);
	printf ("%s\n", strf);
	free (strf);

	return NUMEROZERO;
	}
