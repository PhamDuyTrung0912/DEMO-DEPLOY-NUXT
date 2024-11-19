# Sử dụng image Node.js chính thức làm base image
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Build ứng dụng Nuxt.js
RUN npm run build

# Expose cổng mà ứng dụng sẽ chạy
EXPOSE 3000

# Chạy ứng dụng Nuxt.js
CMD ["npm", "start"]