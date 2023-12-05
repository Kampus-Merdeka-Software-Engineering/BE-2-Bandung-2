const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

module.exports = {
  // Create Favorite
  createFavorite: async (req, res, next) => {
      try {
          let { is_favorite, userId, destinationId } = req.body;

          let newFavorite = await prisma.Favorite.create({
              data: {
                is_favorite,
                userId,
                destinationId
              },
          });

          res.status(201).json({
              status: true,
              message: "New Favorite Created Successfully!",
              data: newFavorite,
          });

      } catch (err) {
        console.error('Error adding to favorit: ', err);
        res.status(500).send('Internal Server Error');
      }
  },

  // Get All Favorite
  getAllFavorite: async (req, res, next) => {
    try {
        const favorite = await prisma.Favorite.findMany();
        res.json(favorite);
    } catch (err) {
        console.error('Error adding to favorit: ', err);
        res.status(500).send('Internal Server Error');
    }
  }
}