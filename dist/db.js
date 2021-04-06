"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const pg_1 = require("pg");
const express_1 = require("express");
const dotenv_1 = require("dotenv");
dotenv_1.config();
const router = express_1.Router();
const pool = new pg_1.Pool({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    port: 5432,
});
const getCashierById = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    return res.send('/getCashierById');
});
const getAllCashiers = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const response = yield pool.query('SELECT * FROM cashier;');
        return res.send(response.rows);
    }
    catch (error) {
        return res.send(error);
    }
});
const createCashier = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    return res.send('/createCashier');
});
const updateCashier = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    return res.send('/updateCashier');
});
const deleteCashier = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    return res.send('/deleteCashier');
});
router.get('/cashiers', getAllCashiers);
router.get('/cashiers/:id', getCashierById);
router.post('/cashiers', createCashier);
router.put('/cashiers/:id', updateCashier);
router.delete('/cashiers/:id', deleteCashier);
exports.default = router;
