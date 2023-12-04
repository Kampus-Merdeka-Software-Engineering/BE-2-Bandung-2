const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
// const bcrypt = require('bcrypt');
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

            if (password !== user.password) {
                return res.status(401).json({
                    status: false,
                    message: 'Email or password is incorrect.',
                    data: null,
                });
            }

            res.status(200).json({
                status: true,
                message: 'Login successful.',
                data: { user },
            });

        } catch (err) {
            next(err);
        }
    },
};
