import { QueryResult, Pool } from 'pg'
import { Request, Response, Router } from 'express'

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
  return res.send('/getAllCashierss')
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
