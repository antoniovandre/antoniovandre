<#
Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

Job: "antoniovandre.github.io/MathematicalRamblingsjs".

Microsoft.PowerShell_profile.ps1

?ltima atualiza??o: 24-07-2021.
#>

Write-Host -NoNewline "Carregando aliases... ";

try
    {
    . 'Antonio Vandré - Aliases.ps1';
    }
catch
    {
    Write-Host "Ocorreu um erro." -ForegroundColor Red;
    break;        
    }

Write-Host "Sucesso." -ForegroundColor Green;