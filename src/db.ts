import { QueryResult, Pool } from 'pg'
import { Request, Response, Router } from 'express'
import { config } from 'dotenv'
config()
import { ICashier } from './models'

const router = Router()

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: 5432,
})

const getCashierById = async (req: Request, res: Response): Promise<Response> => {
  try {
    const id = parseInt(req.params.id)
    console.log(id)
    const response: QueryResult = await pool.query(`SELECT * FROM cashier WHERE id=$1`, [id])
    return res.status(200).json(response.rows)
  } catch (error) {
    return res.status(400).send(error)
  }
}
const getAllCashiers = async (req: Request, res: Response): Promise<Response> => {
  try {
    const response: QueryResult = await pool.query('SELECT * FROM cashier;')
    return res.json(response.rows)
  } catch (error) {
    return res.send(error)
  }
}
const createCashier = async (req: Request, res: Response): Promise<Response> => {
  try {
    const newCashier: ICashier = {
      fullname: req.body.fullname,
      age: req.body.age,
      sex: req.body.sex,
      yearofexp: req.body.yearofexp,
      workslnshift: req.body.workslnshift,
      previousework: req.body.previousework,
      workweekstandart: req.body.workweekstandart,
      cashregister_id: req.body.cashregister_id,
    }
    await pool.query(
      `INSERT INTO cashier (fullname, age, sex, yearofexp, workslnshift, previouswork, workweekstandart, cashregister_id) VALUES ($1,$2,$3,$4,$5,$6,$7,$8)`,
      [
        newCashier.fullname,
        newCashier.age,
        newCashier.sex,
        newCashier.yearofexp,
        newCashier.workslnshift,
        newCashier.previousework,
        newCashier.workweekstandart,
        newCashier.cashregister_id,
      ]
    )
    return res.json({ message: 'Cashier was created' })
  } catch (error) {
    return res.status(400).send(error)
  }
}
const updateCashier = async (req: Request, res: Response): Promise<Response> => {
  try {
    const id = parseInt(req.params.id)
    const updateCashier: ICashier = {
      fullname: req.body.fullname,
      age: req.body.age,
      sex: req.body.sex,
      yearofexp: req.body.yearofexp,
      workslnshift: req.body.workslnshift,
      previousework: req.body.previousework,
      workweekstandart: req.body.workweekstandart,
      cashregister_id: req.body.cashregister_id,
    }
    await pool.query(
      `UPDATE cashier SET fullname=$1, age=$2, sex=$3, yearofexp=$4, workslnshift=$5, previouswork=$6, workweekstandart=$7, cashregister_id=$8 WHERE id=$9`,
      [
        updateCashier.fullname,
        updateCashier.age,
        updateCashier.sex,
        updateCashier.yearofexp,
        updateCashier.workslnshift,
        updateCashier.previousework,
        updateCashier.workweekstandart,
        updateCashier.cashregister_id,
        id,
      ]
    )
    return res.json({ message: `Cashier id:${id} was updated` })
  } catch (error) {
    return res.status(400).send(error)
  }
}
const deleteCashier = async (req: Request, res: Response): Promise<Response> => {
  try {
    const id = parseInt(req.params.id)
    await pool.query(`DELETE FROM cashier WHERE id=$1`, [id])
    return res.json({ message: `Cashier id:${id} was deleted` })
  } catch (error) {
    return res.status(400).send(error)
  }
}

const getTargetCashiers1 = async (req: Request, res: Response): Promise<Response> => {
  try {
    const response: QueryResult = await pool.query('SELECT * FROM cashier;')
    return res.json(response.rows)
  } catch (error) {
    return res.send(error)
  }
}

const getTargetCashiers2 = async (req: Request, res: Response): Promise<Response> => {
  try {
    const response: QueryResult = await pool.query('SELECT * FROM cashier;')
    return res.json(response.rows)
  } catch (error) {
    return res.send(error)
  }
}

router.get('/cashiers/target1', getTargetCashiers1)
router.get('/cashiers/target2', getTargetCashiers2)
router.get('/cashiers', getAllCashiers)
router.get('/cashiers/:id', getCashierById)
router.post('/cashiers', createCashier)
router.put('/cashiers/:id', updateCashier)
router.delete('/cashiers/:id', deleteCashier)
export default router
