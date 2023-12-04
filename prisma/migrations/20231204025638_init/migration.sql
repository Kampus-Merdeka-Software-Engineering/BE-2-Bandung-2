-- CreateTable
CREATE TABLE `users` (
    `id_user` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(50) NOT NULL,
    `username` VARCHAR(50) NOT NULL,
    `fullname` VARCHAR(50) NOT NULL,
    `password_user` VARCHAR(50) NOT NULL,
    `no_handphone` VARCHAR(15) NOT NULL,
    `id_destinasi` INTEGER NULL,

    PRIMARY KEY (`id_user`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `destination` (
    `id_destinasi` INTEGER NOT NULL AUTO_INCREMENT,
    `nama_destinasi` VARCHAR(50) NOT NULL,
    `alamat_destinasi` VARCHAR(255) NOT NULL,
    `deskripsi_destinasi` LONGTEXT NOT NULL,
    `jam_buka` VARCHAR(191) NOT NULL,
    `jam_tutup` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id_destinasi`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `contact_us` (
    `id_contact` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(50) NOT NULL,
    `fullname` VARCHAR(255) NOT NULL,
    `message` TEXT NOT NULL,

    PRIMARY KEY (`id_contact`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_id_destinasi_fkey` FOREIGN KEY (`id_destinasi`) REFERENCES `destination`(`id_destinasi`) ON DELETE SET NULL ON UPDATE CASCADE;
