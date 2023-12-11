const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

module.exports = {
  // Create New Destination
  createDestination: async (req, res, next) => {
      try {
          let { title, location, description, time, image } = req.body;

          let newDestination = await prisma.Destination.create({
              data: {
                title,
                location,
                description,
                time,
                image
              },
          });

          res.status(201).json({
              status: true,
              message: "New Destination Created Successfully!",
              data: newDestination,
          });

      } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
      }
  },

  // Get All Destination
  getAllDestination: async (req, res, next) => {
    try {
        const destination = await prisma.Destination.findMany();
        res.json(destination);
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
    }
  }
}
