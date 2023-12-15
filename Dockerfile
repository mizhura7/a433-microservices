# Pemilihan image nodejs 14 yang alpine biar ringan
FROM node:14-alpine

# Pembuatan directory di node
WORKDIR /app

# Copy working directory ke dir app
COPY . .

# Untuk mengubah environment agar mengarah ke db
ENV NODE_ENV=production 
ENV DB_HOST=item_db

# Untuk install dependency yang dibutuhkan
RUN npm install --production --unsafe-perm && npm run build

# Membuka port ke 8080
EXPOSE 8080

# Untuk run nodejs
CMD ["npm", "start"]
