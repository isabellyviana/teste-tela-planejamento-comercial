import express, { Request, Response } from "express";
import multer from "multer";
import storage from "../http/midlewares/multerConfig.js";
import { CadastroController } from "../http/controllers/cadastroControler.js";

export const cadastro = express.Router();
const upload: multer.Multer = multer({ storage: storage });

cadastro.get("/", CadastroController.responsePage);

cadastro.post("/cadastro ", upload.single("file"), )