# frontend/Dockerfile
FROM node:20

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json antes para instalar dependencias
COPY package*.json ./

# Instalar Angular CLI globalmente
RUN npm install -g @angular/cli

# Instalar las dependencias del proyecto
RUN npm install

# Copiar todo el código fuente al contenedor
COPY . .

# Exponer el puerto donde Angular servirá la aplicación
EXPOSE 4200

# Comando por defecto para iniciar la aplicación
CMD ["npm", "start"]
