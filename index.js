require("dotentv").config();
const express = require("express");
const cors = require("cors");
const { prisma } = require("./config/prisma")
const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.get("/", async (req, res) => {
    res.send("here is the response");
});

app.get("/destinations", async (req, res) => {
    const destination = await prisma.destination.findMany();
    res.status(200).send(destination);
});

app.get("/destinations/:id", async (req, res) => {
    const destination = await prisma.destination.findUnique({
        where:{
            id_destinasi:parseInt(req.params.id),
        },
    });
    if (!catalog.length) res.status(404).send("Destination not found");
    else res.status(200).send(destination);
});

app.all("*", async (req, res) => {
    res.json({
        message: "Routes you're looking is not found",
    });
});

app.listen(PORT, () => {
    console.log(`Server is already running at ${PORT}`)
});