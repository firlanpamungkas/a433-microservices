# Menggunakan image node versi 18 dengan alpine sebagai base image
FROM node:18-alpine as base

# Mengatur direktori kerja ke /src di dalam container
WORKDIR /src

# Menyalin semua file dan direktori dari direktori saat ini ke /src di dalam container
COPY . ./

# Menginstal semua dependensi yang didefinisikan dalam package.json
RUN npm install

# Menginstal bash di dalam container
RUN apk add --no-cache bash

# Mengunduh skrip wait-for-it.sh dan menyimpannya di /bin/wait-for-it.sh
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

# Mengubah perizinan file wait-for-it.sh agar dapat dijalankan
RUN chmod +x /bin/wait-for-it.sh

# Mengekspos port 3001 dari container
EXPOSE 3001

# Menjalankan perintah "npm run start" saat container dijalankan
CMD ["npm", "run", "start"]