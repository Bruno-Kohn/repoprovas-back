import { Request, Response } from 'express';

import * as examTypeService from '../services/examTypeService';

export async function getExamTypes(req: Request, res: Response) {
    try { 
        const type = await examTypeService.getExamTypes();
        return res.send(type);
    }
    catch (error) {
        console.log(error);
        return res.sendStatus(500);
    }
}