const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function createContactUs({ email, fullname, message }) {
  try {
    const contact_us = await prisma.contact_us.create({
      data: {
        email,
        fullname,
        message,
      },
    });
    return contact_us;
  } catch (error) {
    throw error;
  }
}

module.exports = {
  createContactUs,
};
