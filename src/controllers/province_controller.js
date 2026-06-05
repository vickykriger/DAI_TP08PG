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

router.get('/:id', async (req, res) => {
    const { id } = req.params;
    const province = await svc.getByIdAsync(id);
    
    if (province != null) {
        return res.status(200).json(province);
    } else {
        return res.status(404).send('Not Found: No existe una provincia con ese id.');
    }
});

router.post('/', async (req, res) => {
    try {
        const province = req.body;
        const result = await svc.createAsync(province);
        if (result) {
            return res.status(201).send('Created');
        }
        return res.status(500).send('Error interno al insertar.');
    } catch (error) {
        return res.status(400).send(error.message);
    }
});

router.put('/', async (req, res) => {
    try {
        const province = req.body;
        const result = await svc.updateAsync(province);
        
        if (result === null) {
            return res.status(404).send('Not Found: No existe una provincia con ese id.');
        }
        if (result) {
            return res.status(201).send('Created');
        }
        return res.status(500).send('Error interno al actualizar.');
    } catch (error) {
        return res.status(400).send(error.message);
    }
});

router.delete('/:id', async (req, res) => {
    const { id } = req.params;
    const result = await svc.deleteByIdAsync(id);
    
    if (result === null) {
        return res.status(404).send('Not Found: No existe una provincia con ese id.');
    }
    if (result) {
        return res.status(200).send('OK: Encontrado y eliminado.');
    }
    return res.status(500).send('Error interno al eliminar.');
});

export default router;