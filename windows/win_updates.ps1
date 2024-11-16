# Certifique-se de executar este script com privilégios de administrador.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine -Force

# Alterar a associação de arquivos .ps1 para abrir no Notepad (opcional, via registro)
Write-Host "Alterando associação de arquivos .ps1 para Notepad (opcional)..."
New-ItemProperty -Path "HKCU:\Software\Classes\.ps1" -Name "(Default)" -Value "txtfile" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\txtfile\shell\open\command" -Name "(Default)" -Value "$($env:SystemRoot)\System32\notepad.exe `"%1`"" -Force

# Instalar módulo PSWindowsUpdate
Write-Host "Instalando PSWindowsUpdate..."
Install-Module -Name PSWindowsUpdate -Force -AllowClobber

# Atualizar todos os pacotes via Winget
Write-Host "Atualizando todos os pacotes via winget..."
winget upgrade --all --include-unknown --accept-package-agreements --accept-source-agreements

# Executar atualizações do Windows Update
Write-Host "Executando atualizações do Windows..."
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll -IgnoreReboot

# Perguntar ao usuário se deseja reiniciar, desligar ou fazer nada (default N)
$choice = Read-Host -Prompt "[R]eboot / [S]hutdown / [N]othing ? (default is 'N')"

switch ($choice.ToUpper()) {
    "R" {
        Write-Host "Reiniciando o sistema..."
        Restart-Computer -Force
    }
    "S" {
        Write-Host "Desligando o sistema..."
        Stop-Computer -Force
    }
    default {
        Write-Host "Nenhuma ação será tomada."
    }
}
