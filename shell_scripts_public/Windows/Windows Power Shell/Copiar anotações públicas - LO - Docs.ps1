<#
Propriet�rio: Antonio Vandr� Pedrosa Furtunato Gomes.

Job: "antoniovandre.github.io/MathematicalRamblingsjs".

Script de backup do arquivo "antoniovandre-anota��es_p�blicas-5.txt".

�ltima atualiza��o: 25-06-2021.
#>

$source = "C:\Users\xanto\Dropbox\Legado ontol�gico\antoniovandre-anota��es_p�blicas-5.txt"
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
