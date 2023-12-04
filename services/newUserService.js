const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require('bcrypt');
const { getPagination } = require('../helper/pagination');

module.exports = {
    // Create New User
    createUser: async (req, res, next) => {
        try {
            let { username, email, password } = req.body;

            // to hash password
            const hashPassword = await bcrypt.hash(password, 10);

            // check if user existed
            let existUser = await prisma.create_user.findUnique({ where: { email } });
            if(existUser) {
                return res.status(400).json({
                    status: false,
                    message: "Email is already used!",
                    data: null
                });
            }

            let newUser = await prisma.create_user.create({
                data: {
                    username,
                    email,
                    password,
                },
            });

            res.status(201).json({
                status: true,
                message: "New User Created Successfully!",
                data: newUser,
            });

        } catch (err) {
            next(err);
        }
    },

    // Get All Users
    getAllUsers: async (req, res, next) => {
        try {
            let { limit = 10, page = 1} = req.query;
            limit = Number(limit);
            page = Number(page);

            let users = await prisma.create_user.findMany({
                skip: (page - 1) * limit,
                take: limit,
            });

            const { _count } = await prisma.create_user.aggregate({
                _count: { id_user: true }
            });

            let pagination = getPagination(req, _count.id_user, page, limit);

            res.status(200).json({
                status: true,
                message: "OK!",
                data: { pagination, create_user }
            });

        } catch (err) {
            next(err);
        }
    }
}
                                                                    