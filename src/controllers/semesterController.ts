import { Request, Response } from 'express';

import * as semesterService from '../services/semesterService';

export async function getSemesterFromSubjects(req: Request, res: Response) {
    try {
        const semester = await semesterService.getSemesterFromSubjects();
        return res.send(semester);
    } catch (error) {
        console.log(error);
        return res.sendStatus(500);
    }
}