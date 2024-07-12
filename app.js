const { PrismaClient } = require('@prisma/client')
const express = require('express')

const app = express()
const prisma = new PrismaClient()

app.get('/user', async (req, res) => {
    const users = await prisma.user.findMany()
    res.json(users)
})

app.get('/user/new', async (req, res) => {

    const user = await prisma.user.create({ data: {} })
    res.json(user)

})

app.listen(3000, () => console.log('on port 3000'))