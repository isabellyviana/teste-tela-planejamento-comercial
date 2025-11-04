import { PrismaClient } from "../generated/prisma/index.js"


const client = new PrismaClient({
    log: ['query', 'error'],
})

export default client
