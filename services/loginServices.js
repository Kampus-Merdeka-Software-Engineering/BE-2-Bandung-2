const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require('bcrypt');
const { getPagination } = require('../helper/pagination');
const jwt = require('jsonwebtoken');

module.exports = {

    loginUser: async (req, res, next) => {
        try {
            const { email, password } = req.body;

            const user = await prisma.create_user.findUnique({ where: { email } });

            if (!user) {
                return res.status(401).json({
                    status: false,
                    message: 'Email or password is incorrect.',
                    data: null,
                });
            }

            const passwordMatch = await bcrypt.compare(password, user.password);

            if (!passwordMatch) {
                return res.status(401).json({
                    status: false,
                    message: 'Email or password is incorrect.',
                    data: null,
                });
            }

            // Buat token JWT
            const token = jwt.sign({ userId: user.id_user, email: user.email }, 'your-secret-key', {
                expiresIn: '1h', 
            });

            res.status(200).json({
                status: true,
                message: 'Login successful.',
                data: { token, user },
            });

        } catch (err) {
            next(err);
        }
    },

};
