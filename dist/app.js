"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const app = express_1.default();
const db_1 = __importDefault(require("./db"));
app.use(express_1.default.json());
app.use(express_1.default.urlencoded({ extended: false }));
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server start on ${port}`);
});
app.use(db_1.default);
