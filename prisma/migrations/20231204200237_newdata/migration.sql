/*
  Warnings:

  - You are about to drop the column `destinationId` on the `contact` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `contact` table. All the data in the column will be lost.
  - You are about to drop the `_destinationtouser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_destinationtouser` DROP FOREIGN KEY `_DestinationToUser_A_fkey`;

-- DropForeignKey
ALTER TABLE `_destinationtouser` DROP FOREIGN KEY `_DestinationToUser_B_fkey`;

-- DropForeignKey
ALTER TABLE `contact` DROP FOREIGN KEY `Contact_destinationId_fkey`;

-- DropForeignKey
ALTER TABLE `contact` DROP FOREIGN KEY `Contact_userId_fkey`;

-- AlterTable
ALTER TABLE `contact` DROP COLUMN `destinationId`,
    DROP COLUMN `userId`;

-- DropTable
DROP TABLE `_destinationtouser`;
