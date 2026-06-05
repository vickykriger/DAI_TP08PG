import ProvinceRepository from "../repositories/province_repository.js";

export default class ProvinceService {
    constructor() {
        this.repo = new ProvinceRepository();
    }

    getAllAsync = async () => {
        return await this.repo.getAllAsync();
    }

    getByIdAsync = async (id) => {
        return await this.repo.getByIdAsync(id);
    }

    createAsync = async (province) => {
        this.validateProvince(province);
        return await this.repo.createAsync(province);
    }

    updateAsync = async (province) => {
        this.validateProvince(province);
        const existing = await this.repo.getByIdAsync(province.id);
        if (!existing) return null; 

        return await this.repo.updateAsync(province);
    }

    deleteByIdAsync = async (id) => {
        const existing = await this.repo.getByIdAsync(id);
        if (!existing) return null; 

        return await this.repo.deleteByIdAsync(id);
    }

    validateProvince(province) {
        if (!province.name || province.name.trim() === "") {
            throw new Error("El nombre no puede estar vacío.");
        }
        if (province.name.trim().length < 3) {
            throw new Error("El nombre debe tener al menos 3 letras.");
        }
    }
}