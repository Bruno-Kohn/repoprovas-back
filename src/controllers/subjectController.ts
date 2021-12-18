import { Request, Response } from 'express';

import * as subjectService from '../services/subjectService';

export async function getSubjects(req: Request, res: Response) {
    try { 
        const subjects = await subjectService.getSubjects();
        return res.send(subjects);
    }
    catch (error) {
        console.log(error);
        return res.sendStatus(500);
    }
}