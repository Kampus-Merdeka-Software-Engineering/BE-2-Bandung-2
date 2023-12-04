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
          next(err);
      }
  },

  // Get All Contact Us
  getAllContactUs: async (req, res) => {
    try {
        const contactUs = await prisma.Contact.findMany();
        res.json(contactUs);
    } catch (err) {
        next(err);
    }
  }
}
