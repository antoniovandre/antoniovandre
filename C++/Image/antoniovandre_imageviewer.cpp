// Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

// Leitor de imagens.

// Dependências: opencv4.

// Compile com o comando: "g++ antoniovandre_imageviewer.cpp -o antoniovandre_imageviewer `pkg-config --cflags --libs opencv4`".

// Licença de uso: Atribuição-NãoComercial-CompartilhaIgual (CC BY-NC-SA).

// Última atualização: 14-03-2026.

#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

#define TITULO "Antonio Vandre's Image viewer - "
#define MENSAGEMERRO "Use \"antoniovandre_imageviewer <PATH>\".\n"
#define MENSAGEMERROIMAGEM "Erro ao carregar a imagem.\n"
#define TAMANHO 800

int main (int argc, char ** argv)
	{
	cv::Mat img;
	cv::Size size;

	char titulo [sizeof (TITULO) + sizeof (argv [1])];
	char c;

	if (argc != 2)
		{
		printf (MENSAGEMERRO);
		return -1;
		}

	img = cv::imread(argv[1], cv::IMREAD_COLOR);

	if(img.empty ())
		{
		printf(MENSAGEMERROIMAGEM);
		return -1;
		}

	strcpy (titulo, "");
	strcpy (titulo, TITULO);
	strcat (titulo, argv [1]);

	size = img.size();

	cv::namedWindow (titulo, cv::WINDOW_NORMAL);
	cv::imshow (titulo, img);

	if (size.width >= size.height)
		cv::resizeWindow (titulo, TAMANHO, (int) (TAMANHO * size.height / size.width));
	else
		cv::resizeWindow (titulo, (int) (TAMANHO * size.width / size.height, TAMANHO), TAMANHO);

	while (cv::getWindowProperty(titulo, cv::WND_PROP_VISIBLE) >= 1)
		{
		c = cv::waitKey(1000);

		if (c == 'r')
			{
			img = cv::imread(argv [1], cv::IMREAD_COLOR);
			cv::imshow (titulo, img);
			}
		else if ((c == 27) || (c == 'q') || (c == 'n') || (c == 'p')) break;
		}

	cv::destroyWindow(titulo);

	if (c == 'n') return -10;
	if (c == 'p') return -11;

	return 0;
	}
