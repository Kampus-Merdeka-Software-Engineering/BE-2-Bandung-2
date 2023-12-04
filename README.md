#Simple web for my capstone project using Expres.JS & Prisma

#Langkah langkah pengerjaan project ini 
1. Inisiasi project npm dengan menggunakan command `npm init -y`

2. Update `package.json` dengan menambahkan scripts seperti
```json
"scripts": {
    "start": "node index.js",
    "start:dev": "nodemon index.js"
  },
```

3. Install package yang diperlukan
```bash
npm install express mysql2 dotenv cors
```

4. Install devDependency karena pake nodemon
```bash
npm install -D nodemon
```

5. Lalu akan ada `node_modules` dan `package-locj.json` yang dibuat secara otomatis