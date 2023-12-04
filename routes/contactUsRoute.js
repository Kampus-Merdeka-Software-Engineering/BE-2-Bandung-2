const express = require('express');
const router = express.Router();
const contactUsController = require('../controller/contactUsController');

// POST create feedback
router.post('/contactus', async (req, res) => {
  try {
    const result = await contactUsController.createContactUs(req.body);

    // Kirim respons berdasarkan hasil dari controller
    res.json(result);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
});

module.exports = router;
