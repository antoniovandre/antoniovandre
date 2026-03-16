# Projeto Mathematical Ramblings.

# Script PowerShell reinicializador do Nimi Places.

# ?ltima atualização: 17-11-2023.

powershell -Command "Get-Process 'Nimi Places' | Stop-Process"

& 'C:\Nimi Places\Nimi Places.exe'
