import { Router } from "express";
import { gamesRouter } from "./games.router";

const apiRouter = Router();
apiRouter.use('/games', gamesRouter);
export default apiRouter;