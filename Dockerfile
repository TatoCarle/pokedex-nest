# Usa una imagen base de Node (puedes ajustar la versión si lo necesitas)
FROM node:16-alpine

# Define el directorio de trabajo
WORKDIR /app

# Copia los archivos de definición de dependencias
COPY package*.json ./

# Instala las dependencias sin usar cache mount
RUN npm ci

# Copia el resto del código de la aplicación
COPY . .

# (Opcional) Compila el proyecto si es necesario, por ejemplo:
# RUN npm run build

# Expone el puerto en el que se ejecuta la aplicación (ajusta si usas otro)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
