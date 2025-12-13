# Imagen base de Node.js
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm ci --only=production

# Copiar código fuente
COPY src ./src

# Exponer puerto
EXPOSE 3002

# Variables de entorno
ENV NODE_ENV=production

# Comando de inicio
CMD ["node", "src/index.js"]