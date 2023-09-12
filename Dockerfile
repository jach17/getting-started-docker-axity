#Definir la imagen
FROM node:18-alpine

#autor
LABEL authors="jonathan.aldana@axity.com"

#Directorio de trabajo
WORKDIR /app

#Se copian archivos para restaurar dependencias
COPY app/package.json app/yarn.lock ./

#Ejecutar comando
RUN npm install --omit=dev

#Codigo fuente
COPY app/spec ./spec
COPY app/src ./src

#Lanzar la app
CMD ["node", "src/index.js"]

#Exponemos el puerto
EXPOSE 3000

#Volumen para persistencia
VOLUME /workspaces

