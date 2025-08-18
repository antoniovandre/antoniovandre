<#
Propriet�rio: Antonio Vandr� Pedrosa Furtunato Gomes.

Job: "mathematicalramblings.blogspot.com".

Script de backup do arquivo "antoniovandre-atualmente_lendo-4.txt".

�ltima atualiza��o: 25-06-2021.
#>

$source = "C:\Users\xanto\Dropbox\Legado ontol�gico\antoniovandre-atualmente_lendo-4.txt"
$dest = "C:\Users\xanto\Dropbox\Documents\BACKUPED14"

Write-Host "Copiando `"$source`" para `"$dest`"...";

try
    {
    Copy-Item �Path $source �Destination $dest | Out-Null;
    }
catch
    {
    Write-Host "Um erro ocorreu." -ForegroundColor Red;
    break;
    }

Write-Host "Sucesso." -ForegroundColor Green;

Write-Host "Aperte qualquer tecla para continuar...";
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
