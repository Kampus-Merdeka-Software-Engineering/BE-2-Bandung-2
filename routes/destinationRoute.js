const express = require('express');
const router = express.Router();
const destinationController = require('../controller/destinationController');

// GET all Videos
router.get('/destination', async (req, res) => {
  try {
    const result = await destinationController.getAllDestination();

    // Kirim respons berdasarkan hasil dari controller
    res.json(result);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
});


module.exports = router;
