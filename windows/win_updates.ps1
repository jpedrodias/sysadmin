
# 0. Permissões: Certifique-se de executar este script com privilégios de administrador.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
# Set default action for .ps1 file as open on notepad


# 0. Get-WindowsUpdate: Esse comando faz parte do módulo PowerShell PSWindowsUpdate, que pode não estar instalado por padrão. Pode ser instalado com:
Install-Module -Name PSWindowsUpdate -Force -AllowClobber

# 1. Atualizar todos os pacotes via Winget
winget upgrade --all --include-unknown --accept-package-agreements --accept-source-agreements

# 2. Executar atualizações do Windows Update
Write-Host "Procurando por atualizações do Windows..."
Get-WindowsUpdate -Install -AcceptAll -IgnoreReboot
