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
            let existUser = await prisma.User.findFirst({ where: { email } });
            if(existUser) {
                return res.status(400).json({
                    status: false,
                    message: "Email is already used!",
                    data: null
                });
            }

            let newUser = await prisma.User.create({
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
            console.error('Error adding to favorit: ', error);
            res.status(500).send('Internal Server Error');
        }
    },

    // Get All Users
    getAllUser: async (req, res, next) => {
        try {
            const users = await prisma.User.findMany();
            res.json(users);
        } catch (err) {
            console.error('Error adding to favorit: ', err);
            res.status(500).send('Internal Server Error');
        }
    }
}
                                                                    