const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function getAllDestination() {
 try {
    const destination = await prisma.destination.findMany();
    return destination;
 } catch (error) {
    throw error;
 }
}

async function createDestination(name_destination, loc_destination, desc_destination, open_hours, close_hours, isFavorite = false) {
 try {
    const destination = await prisma.destination.create({
      data: {
        name_destination,
        loc_destination,
        desc_destination,
        open_hours,
        close_hours,
        isFavorite
      },
    });

    return destination;
 } catch (error) {
    throw error;
 }
}

module.exports = {
 getAllDestination,
 createDestination,
};