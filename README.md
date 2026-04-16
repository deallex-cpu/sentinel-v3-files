# SENTINEL v3.0 — Fichiers complets

Ce repo contient les 2 fichiers principaux de SENTINEL v3.0.

## Comment utiliser

1. Va dans le repo principal: https://github.com/deallex-cpu/sentinel-endpoint-security
2. Clique **Code** > **Download ZIP**
3. Reviens ici et telecharge `server.js` et `index.html`
4. Remplace les 2 fichiers du ZIP par ceux-ci
5. Lance: `node server.js`

## Ou tout en une commande

```powershell
# Telecharger le repo principal
git clone https://github.com/deallex-cpu/sentinel-endpoint-security.git dashboard
cd dashboard

# Remplacer par les vrais fichiers v3
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/deallex-cpu/sentinel-v3-files/main/server.js' -OutFile 'server.js'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/deallex-cpu/sentinel-v3-files/main/index.html' -OutFile 'index.html'

# Lancer
node server.js
```
