import { QueryResult, Pool } from 'pg'
import { Request, Response, Router } from 'express'
import { config } from 'dotenv'
config()

const router = Router()

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: 5432,
})

const getCashierById = async (req: Request, res: Response): Promise<Response> => {
  return res.send('/getCashierById')
}
const getAllCashiers = async (req: Request, res: Response): Promise<Response> => {
  try {
    const response: QueryResult = await pool.query('SELECT * FROM cashier;')
    return res.send(response.rows)
  } catch (error) {
    return res.send(error)
  }
}
const createCashier = async (req: Request, res: Response): Promise<Response> => {
  return res.send('/createCashier')
}
const updateCashier = async (req: Request, res: Response): Promise<Response> => {
  return res.send('/updateCashier')
}
const deleteCashier = async (req: Request, res: Response): Promise<Response> => {
  return res.send('/deleteCashier')
}

router.get('/cashiers', getAllCashiers)
router.get('/cashiers/:id', getCashierById)
router.post('/cashiers', createCashier)
router.put('/cashiers/:id', updateCashier)
router.delete('/cashiers/:id', deleteCashier)
export default router
