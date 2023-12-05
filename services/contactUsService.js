const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

module.exports = {
  // Create Contact Us
  createContactUs: async (req, res, next) => {
      try {
          let { email, fullname, message } = req.body;

          let newContactUs = await prisma.Contact.create({
              data: {
                email,
                fullname,
                message
              },
          });

          res.status(201).json({
              status: true,
              message: "Contact US Created Successfully!",
              data: newContactUs,
          });

      } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
      }
  },

  // Get All Contact Us
  getAllContactUs: async (req, res, next) => {
    try {
        const contactUs = await prisma.Contact.findMany();
        res.json(contactUs);
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
    }
  }
}
