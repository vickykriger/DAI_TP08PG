import { Router } from 'express';
import ProvinceService from './../services/province_service.js';

const router = Router();
const svc = new ProvinceService();

router.get('/', async (req, res) => {
    const returnArray = await svc.getAllAsync();

    if (returnArray != null) {
        return res.status(200).json(returnArray);
    }

    return res.status(500).send('Error interno.');
});

export default router;