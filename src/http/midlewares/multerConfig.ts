import path from "path";
import fs from "fs";
import multer from "multer";


const local = path.resolve(process.cwd(), "src/uploads")

if(!local){
   fs.mkdirSync(local, { recursive: true })
}

const storage = multer.diskStorage({
   destination: (req, file, cb) => {
       cb(null, local)
   },
   filename: (req, file, cb) => {
       cb(null, `${Date.now()}-${file.originalname}`)
   }
})


export default storage

    
