const express = require('express');
const router = express.Router();
const { createContactUs, getAllContactUs } = require('../services/contactUsService');


router.get('/', (req, res) => {
    res.status(200).json({
        status: true,
        message: 'Welcome to GO SMG!',
        data: null
    });
});

router.post('/create', createContactUs);
router.get('/get', getAllContactUs);

module.exports = router;
