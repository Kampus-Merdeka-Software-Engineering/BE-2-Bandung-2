const express = require('express');
const router = express.Router();
const { createUser, getAllUsers } = require('../services/newUserService');
const { loginUser } = require('../services/loginServices')


router.get('/', (req, res) => {
    res.status(200).json({
        status: true,
        message: 'Welcome to GO SMG!',
        data: null
    });
});

router.post('/users', createUser);
router.get('/users', getAllUsers);
router.get('/users', loginUser);

module.exports = router;