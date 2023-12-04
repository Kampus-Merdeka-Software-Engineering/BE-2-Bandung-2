const express = require('express');
const router = express.Router();
const { createUser, getAllUser } = require('../services/newUserService');
const { loginUser } = require('../services/loginServices')


router.get('/', (req, res) => {
    res.status(200).json({
        status: true,
        message: 'Welcome to GO SMG!',
        data: null
    });
});

router.post('/register', createUser);
router.get('/get', getAllUser);
router.post('/login', loginUser);

module.exports = router;