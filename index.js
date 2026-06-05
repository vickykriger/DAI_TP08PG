import express from "express";
import cors from "cors";
import ProvinceRouter from "./src/controllers/province_controller.js";
import LogHelper from "./src/helpers/log_helpers.js";

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());
app.use("/api/province", ProvinceRouter);
app.get('/test', (req, res) => {
    res.send('OK');
});
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});


app.get('/test-error', (req, res) => {
    try {
        const resultado = variableInexistente * 2; 
        res.send(resultado);
    } catch (error) {
        LogHelper.logError(error);
        res.status(500).send("El error fue registrado en el log.");
    }
});