const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const { getPagination } = require('../helper/pagination');

const cryptPassword = async (password) => {
    const salt = await bcrypt.genSalt(5)
    return bcrypt.hash(password, salt)
}

module.exports = {
    // Create New User
    createUser: async (req, res, next) => {
        try {

            let { username, email, password } = req.body;

            // check if user existed
            let existUser = await prisma.User.findFirst({ where: { email } });
            if(existUser) {
                return res.status(400).json({
                    status: false,
                    message: "Email is already used!",
                    data: null
                });
            }
            
            const hashPassword = await cryptPassword(password);
            
            let newUser = await prisma.User.create({
                data: {
                    username,
                    email,
                    password: hashPassword
                },
            });

            res.status(201).json({
                status: true,
                message: "New User Created Successfully!",
                data: newUser,
            });

        } catch (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        }
    },

    // Get All Users
    getAllUser: async (req, res, next) => {
        try {
            const users = await prisma.User.findMany();
            res.json(users);
        } catch (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        }
    }
}
                                                                    