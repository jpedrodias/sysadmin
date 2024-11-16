
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

# 3. Pausar atualizações automáticas do Windows por 30 dias
Write-Host "Pausando atualizações automáticas do Windows por 30 dias..."
Pause-WindowsUpdate -Days 30

# 4. Configurar para que as atualizações sejam geridas manualmente
Write-Host "Configurando políticas para gerenciamento manual de atualizações..."
Set-ItemProperty "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Value 1

Write-Host "Script concluído. Atualizações pausadas e definidas para modo manual."
