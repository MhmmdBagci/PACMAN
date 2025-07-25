# 1. Node-Image 
FROM node:latest

# 2. Arbeitsverzeichnis
WORKDIR /app

# 3. Nur package.json & lock kopieren
COPY package*.json ./

# 4. Abhängigkeiten installieren
RUN npm install

# 5. Rest des Codes kopieren
COPY . .

# 6. Port freigeben
EXPOSE 8080

# 7. Startbefehl – starte server.js aus dem bin-Verzeichnis
CMD ["node", "bin/server.js"]
