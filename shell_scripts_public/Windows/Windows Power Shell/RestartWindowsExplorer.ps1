# Projeto Mathematical Ramblings.

# Script PowerShell reinicializador do Windows Explorer.

# ?ltima atualização: 17-11-2023.

powershell -ExecutionPolicy Bypass -NoProfile -NoExit -Command "Get-Process explorer | Stop-Process"
