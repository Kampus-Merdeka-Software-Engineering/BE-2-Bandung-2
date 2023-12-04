require('dotenv').config();
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const contactUsRouter = require('./routes/contactUsRoute');
const destinationRouter = require('./routes/destinationRoute');
const usersRouter = require('./routes/usersRoute');
const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Routes
app.use('/destination', destinationRouter);
app.use('/contactus', contactUsRouter);
app.use('/users', usersRouter);


// Start server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
