import bodyParser from "body-parser";
import { Express } from "express";
import { cadastro } from "./cadastroRoutes.js";

const ApplicationRoutes = (app: Express) => {
  app.use(bodyParser.json());
  app.use(cadastro)

};

export default ApplicationRoutes;