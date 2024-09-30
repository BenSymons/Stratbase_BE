import { Router } from "express";
import { getGames } from "../controllers/games.controller";

const gamesRouter = Router();
gamesRouter.route('/').get(getGames);

export { gamesRouter }
