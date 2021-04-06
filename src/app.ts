import express from 'express'

const app = express()

import router from './db'

//middlewares
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

const port = process.env.PORT || 3000
app.listen(port, () => {
  console.log(`Server start on ${port}`)
})

app.use(router)
