const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

module.exports = {
  // Create Favorite
  createFavorite: async (req, res, next) => {
      try {
          let { userId, destinationId } = req.body;

          const existingFavorite = await prisma.Favorite.findFirst({
            where: {
              userId,
              destinationId,
            },
          });
      
          if (existingFavorite) {
            return res.status(400).json({
              status: false,
              message: 'Destination already in favorites.',
            });
          }
      
          const newFavorite = await prisma.Favorite.create({
            data: {
              userId,
              destinationId,
              is_favorite: true, 
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
  },

  // Delete favorite
  delFavorite: async (req, res, next) => {
    try {
        const { userId, destinationId } = req.body;
    
        const existingFavorite = await prisma.favorite.findFirst({
          where: {
            userId,
            destinationId,
          },
        });

        if (!existingFavorite) {
            // Destinasi tidak ada dalam favorit, kita bisa memberikan respons sesuai kebutuhan
            return res.status(400).json({
              status: false,
              message: 'Destination not found in favorites.',
            });
          }

        await prisma.favorite.delete({
            where: {
              id: existingFavorite.id,
            },
          });

          res.status(200).json({
            status: true,
            message: 'Destination removed from favorites successfully.',
          });

    } catch (err) {
        console.error(err);
        res.status(500).send('Internal Server Error');
    }
  }

}