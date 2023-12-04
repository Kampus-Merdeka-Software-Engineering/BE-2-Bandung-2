const contactUsService = require('../services/contactUsService');

async function createContactUs(req, res) {
  const { email, fullname, message } = req.body;

  try {
    const newContactUs = await contactUsService.createContactUs({ email, fullname, message });
    res.json(newContactUs);
  } catch (error) {
    res.status(500).json({ error: 'Internal Server Error' });
  }
}

module.exports = {
  createContactUs,
};