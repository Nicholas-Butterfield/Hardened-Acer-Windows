# Project-Ghost-Machine: Initial Security Baseline Audit
# Anchor Station: Acer Predator Helios 16

Write-Host "`n--- [ BITLOCKER STATUS ] ---" -ForegroundColor Cyan
manage-bde -status C:

Write-Host "`n--- [ LISTENING NETWORK PORTS ] ---" -ForegroundColor Cyan
Get-NetTCPConnection -State Listen | Select-Object LocalAddress, LocalPort, OwningProcess | Sort-Object LocalPort

Write-Host "`n--- [ WINDOWS DEFENDER STATUS ] ---" -ForegroundColor Cyan
Get-MpComputerStatus | Select-Object AMServiceEnabled, RealTimeProtectionEnabled, AntivirusSignatureLastUpdated