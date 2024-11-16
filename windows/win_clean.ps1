# Este script realiza uma limpeza abrangente do sistema, removendo caches e arquivos temporários
# - Limpa o cache do Windows Update.
# - Redefine o cache do Microsoft Store.
# - Remove arquivos temporários do sistema e do usuário.
# - Limpa o cache DNS.
# - Remove cache de miniaturas.
# - Opcional: Limpa o cache do navegador Microsoft Edge.

# 1. Limpar cache do Windows Update
Write-Host "Limpando cache do Windows Update..."
Stop-Service -Name wuauserv -Force
Remove-Item -Path "C:\Windows\SoftwareDistribution\Download\*" -Force -Recurse
Start-Service -Name wuauserv
Write-Host "Cache do Windows Update limpo."

# 2. Limpar cache do Microsoft Store
Write-Host "Limpando cache do Microsoft Store..."
wsreset.exe

# 3. Limpar arquivos temporários do sistema
Write-Host "Limpando arquivos temporários..."
Remove-Item -Path "C:\Windows\Temp\*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "$env:LOCALAPPDATA\Temp\*" -Force -Recurse -ErrorAction SilentlyContinue
Write-Host "Arquivos temporários limpos."

# 4. Limpar cache de DNS
Write-Host "Limpando cache de DNS..."
ipconfig /flushdns
Write-Host "Cache de DNS limpo."

# 5. Limpar cache de Thumbnails
Write-Host "Limpando cache de Thumbnails..."
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\Explorer\thumbcache_*" -Force -Recurse -ErrorAction SilentlyContinue
Write-Host "Cache de Thumbnails limpo."

# 6. Limpar cache do navegador Edge (opcional)
Write-Host "Limpando cache do Microsoft Edge..."
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache\*" -Force -Recurse -ErrorAction SilentlyContinue
Write-Host "Cache do Microsoft Edge limpo."

Write-Host "Limpeza de cache concluída com sucesso."
