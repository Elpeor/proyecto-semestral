# =========================
# Etapa 1: Build
# =========================
FROM node:20-alpine AS builder

# Directorio de trabajo
WORKDIR /app

# Copiar package files
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del proyecto
COPY . .

# Build del proyecto Vite
RUN npm run build

# =========================
# Etapa 2: Producción
# =========================
FROM nginx:alpine

# Eliminar archivos default de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar build generado por Vite
COPY --from=builder /app/dist /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf

# Exponer puerto
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]