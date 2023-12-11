const express = require('express');
const router = express.Router();
const { createDestination, getAllDestination } = require('../services/destinationService');


router.get('/', (req, res) => {
    res.status(200).json({
        status: true,
        message: 'Welcome to GO SMG!',
        data: null
    });
});

router.post('/create', createDestination);
router.get('/get', getAllDestination);

module.exports = router;

