<#
Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

Job: "antoniovandre.github.io/MathematicalRamblingsjs".

Script de backup do arquivo "antoniovandre-anotações_públicas-5.txt".

Última atualização: 25-06-2021.
#>

$source = "C:\Users\xanto\Dropbox\Legado ontológico\antoniovandre-anotações_públicas-5.txt"
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
