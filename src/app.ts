import Express from 'express';
import ApplicationRoutes from './routes/index.js';

export const app = Express();

ApplicationRoutes(app)