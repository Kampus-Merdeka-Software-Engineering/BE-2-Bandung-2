const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const { getPagination } = require('../helper/pagination');

module.exports = {

    loginUser: async (req, res, next) => {
        try {

            const { email, password } = req.body;

            const user = await prisma.User.findFirst({ where: { email } });

            if (!user) {
                return res.status(401).json({
                    status: false,
                    message: 'Email or password is incorrect.',
                    data: null,
                });
            }
            
            const isPasswordValid = await bcrypt.compare(password, user.password);

            if (!isPasswordValid) {
                return res.status(401).json({
                    status: false,
                    message: 'Email or password is incorrect.',
                    data: null,
                });
            }

            const token = jwt.sign({ userId: user.id, email: user.email }, 'your_secret_key', {
                expiresIn: '1h', // You can adjust the token expiration time
            });

            res.status(200).json({
                status: true,
                message: 'Login successful.',
                data: { user, token },
            });

        } catch (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        }
    },
};
