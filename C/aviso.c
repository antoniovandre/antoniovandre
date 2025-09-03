// Proprietário: Antonio Vandré Pedrosa Furtunato Gomes (antoniovandre.github.io/MathematicalRamblingsjs).

// Software exibidor de uma caixa de diálogo com um aviso passado como parâmetro por linha de comando.

// Dependências: gtk4, strings, math.

/* Compile com o comando:

gcc `pkg-config gtk4 --cflags` aviso.c -o aviso `pkg-config gtk4 --libs` -lm
*/

// Licença de uso: Atribuição-NãoComercial-CompartilhaIgual (CC BY-NC-SA).

// Última atualização: 02-09-2025. Não considerando alterações em variáveis globais.

#include <math.h>
#include <strings.h>
#include <gtk/gtk.h>

int key_pressed (GtkWindow * window, guint keyval)
	{if (keyval == GDK_KEY_Escape) gtk_window_destroy(window);}

int activate (GApplication * app, gpointer * user_data)
	{
	GtkWidget * window = gtk_application_window_new(GTK_APPLICATION (app));
	GtkWidget * label = gtk_label_new ("");

	GtkEventController * event_controller = gtk_event_controller_key_new ();
	g_signal_connect_object (event_controller, "key-pressed", G_CALLBACK (key_pressed), window, G_CONNECT_SWAPPED);
	gtk_widget_add_controller (window, event_controller);

	gtk_window_set_title(GTK_WINDOW(window), "Aviso");
	gchar * aviso = g_strcompress((char *) user_data);
	int largura_aviso = 0;
	int tamanho_linha = 0;
	int linhas = 1;
	int i;

	for (i = 1; i < strlen((char *) user_data); i++)
		if (((char) ((char *) user_data)[i-1] == '\\') && ((char) ((char *) user_data)[i] == 'n'))
			{
			largura_aviso = (int) fmax(largura_aviso, tamanho_linha);
			tamanho_linha = 0;
			linhas++;
			}
		else
			{
			tamanho_linha ++;
			largura_aviso = (int) fmax(largura_aviso, tamanho_linha);
			}

	gtk_window_set_default_size (GTK_WINDOW(window), (int) fmax(200, 12 * largura_aviso), (int) fmax(100, 25 * linhas));

	gtk_label_set_text (GTK_LABEL(label), aviso);
	g_free (aviso);

	gtk_window_set_child (GTK_WINDOW (window), label);
	gtk_window_present (GTK_WINDOW (window));
	}

int main (int argc, char ** argv)
	{
	GtkApplication * app = gtk_application_new ("org.antoniovandre.aviso", G_APPLICATION_DEFAULT_FLAGS);

	g_signal_connect (app, "activate", G_CALLBACK(activate), argv[1]);

	return g_application_run (G_APPLICATION(app), 0, NULL);
	}
