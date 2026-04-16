# SENTINEL v3.0 — Script d'assemblage
# Ce script telecharge et assemble le server.js complet

Write-Host 'SENTINEL v3.0 — Assemblage du server.js' -ForegroundColor Cyan

$base = 'https://raw.githubusercontent.com/deallex-cpu/sentinel-v3-files/main'

# Telecharger les 2 parties
Invoke-WebRequest -Uri "$base/server_part1.js" -OutFile 'server_part1.js'
Invoke-WebRequest -Uri "$base/server_part2.js" -OutFile 'server_part2.js'

# Assembler
$p1 = Get-Content 'server_part1.js' -Raw
$p2 = Get-Content 'server_part2.js' -Raw
$p1 + $p2 | Set-Content -Path 'server.js' -Encoding UTF8 -NoNewline

# Nettoyer
Remove-Item 'server_part1.js' -EA SilentlyContinue
Remove-Item 'server_part2.js' -EA SilentlyContinue

$lines = (Get-Content 'server.js').Count
Write-Host "server.js assemble: $lines lignes" -ForegroundColor Green
if ($lines -ge 900) { Write-Host 'OK!' -ForegroundColor Green } else { Write-Host 'ERREUR: fichier incomplet' -ForegroundColor Red }
