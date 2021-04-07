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
    try {
        const id = parseInt(req.params.id);
        console.log(id);
        const response = yield pool.query(`SELECT * FROM cashier WHERE id=$1`, [id]);
        return res.status(200).json(response.rows);
    }
    catch (error) {
        return res.status(400).send(error);
    }
});
const getAllCashiers = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const response = yield pool.query('SELECT * FROM cashier;');
        return res.json(response.rows);
    }
    catch (error) {
        return res.send(error);
    }
});
const createCashier = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const newCashier = {
            fullname: req.body.fullname,
            age: req.body.age,
            sex: req.body.sex,
            yearofexp: req.body.yearofexp,
            workslnshift: req.body.workslnshift,
            previousework: req.body.previousework,
            workweekstandart: req.body.workweekstandart,
            cashregister_id: req.body.cashregister_id,
        };
        yield pool.query(`INSERT INTO cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) VALUES ($1,$2,$3,$4,$5,$6,$7,$8)`, [
            newCashier.fullname,
            newCashier.age,
            newCashier.sex,
            newCashier.yearofexp,
            newCashier.workslnshift,
            newCashier.previousework,
            newCashier.workweekstandart,
            newCashier.cashregister_id,
        ]);
        return res.json({ message: 'Cashier was created' });
    }
    catch (error) {
        return res.status(400).send(error);
    }
});
const updateCashier = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const id = parseInt(req.params.id);
        const updateCashier = {
            fullname: req.body.fullname,
            age: req.body.age,
            sex: req.body.sex,
            yearofexp: req.body.yearofexp,
            workslnshift: req.body.workslnshift,
            previousework: req.body.previousework,
            workweekstandart: req.body.workweekstandart,
            cashregister_id: req.body.cashregister_id,
        };
        yield pool.query(`UPDATE cashier SET fullname=$1, age=$2, sex=$3, yearofexp=$4, workslnshift=$5, previouswork=$6, workweekstandart=$7, cashregister_id=$8 WHERE id=$9`, [
            updateCashier.fullname,
            updateCashier.age,
            updateCashier.sex,
            updateCashier.yearofexp,
            updateCashier.workslnshift,
            updateCashier.previousework,
            updateCashier.workweekstandart,
            updateCashier.cashregister_id,
            id,
        ]);
        return res.json({ message: `Cashier id:${id} was updated` });
    }
    catch (error) {
        return res.status(400).send(error);
    }
});
const deleteCashier = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const id = parseInt(req.params.id);
        yield pool.query(`DELETE FROM cashier WHERE id=$1`, [id]);
        return res.json({ message: `Cashier id:${id} was deleted` });
    }
    catch (error) {
        return res.status(400).send(error);
    }
});
const getTargetCashiers1 = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const queryOptions = {
        shop_city: 'Lviv',
        shop_name: 'ATB',
        cashier_yearofexp: 5,
    };
    try {
        const response = yield pool.query(`select cashier.id, cashier.fullname from cashier join cashregister on cashier.cashregister_id = cashregister.id 
                                                    join shop on cashregister.shop_id = shop.id where shop.city = $1 and shop.name = $2 
                                                    and cashier.yearofexp >= $3;`, [queryOptions.shop_city, queryOptions.shop_name, queryOptions.cashier_yearofexp]);
        return res.json(response.rows);
    }
    catch (error) {
        return res.send(error);
    }
});
const getTargetCashiers2 = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const queryOptions = {
        address: 'address15',
        name: 'ATB',
        neparnieKassy: 1,
        weekstandart: true,
        shift: 3,
    };
    try {
        const response = yield pool.query(`select cashier.id, cashier.fullname from cashier join cashregister on cashier.cashregister_id = cashregister.id 
                                                    join shop on cashregister.shop_id = shop.id where shop.name = $1 and shop.address = $2 
                                                    and cashier.workweekstandart = $3 and cashier.workslnshift = $4;`, [queryOptions.name, queryOptions.address, queryOptions.weekstandart, queryOptions.shift]);
        return res.json(response.rows);
    }
    catch (error) {
        return res.send(error);
    }
});
router.get('/cashiers/target1', getTargetCashiers1);
router.get('/cashiers/target2', getTargetCashiers2);
router.get('/cashiers', getAllCashiers);
router.get('/cashiers/:id', getCashierById);
router.post('/cashiers', createCashier);
router.put('/cashiers/:id', updateCashier);
router.delete('/cashiers/:id', deleteCashier);
exports.default = router;
