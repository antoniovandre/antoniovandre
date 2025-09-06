<#
Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

Job: "mathematicalramblings.blogspot.com".

Script de backup do arquivo "antoniovandre-artigos_lidos-5.txt".

Última atualização: 11-07-2021.
#>

$source = "C:\Users\xanto\Dropbox\Legado ontológico\antoniovandre-artigos_lidos-5.txt"
$dest = "C:\Users\xanto\Dropbox\Documents\BACKUPED14"

Write-Host "Copiando `"$source`" para `"$dest`"...";

try
    {
    Copy-Item –Path $source –Destination $dest | Out-Null;
    }
catch
    {
    Write-Host "Um erro ocorreu." -ForegroundColor Red;
    break;
    }

Write-Host "Sucesso." -ForegroundColor Green;

Write-Host "Aperte qualquer tecla para continuar...";
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
