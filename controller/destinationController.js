const destinationService = require('../services/destinationService');

async function getAllDestination(req, res) {
  try {
    const destination = await destinationService.getAllDestination();
    res.json(destination);
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
}


module.exports = {
  getAllDestination,
};
