
import { Request, Response } from "express";
import client from "../../Client/client.js";

export class CadastroController{

    static async createCadastro(req: Request, res: Response){

        //await client.cadastro.createMany({})
    }

    static async responsePage(req: Request, res: Response){
        return res.send("ESTA SERÁ A PÁGINA DE CADASTRO DE PRODUTOS")
    }





}