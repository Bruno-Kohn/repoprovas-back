import { Request, Response } from 'express';

import * as professorService from '../services/professorService';

export async function getProfessorFromSubject(req: Request, res: Response) {
    try {
        const subjectId = Number(req.params.id);
        const professors = await professorService.checkSubject(subjectId);
        return res.send(professors);
    } catch (error) {
        console.log(error);
        return res.sendStatus(500);
    }
}

export async function getProfessorsFromExams(req: Request, res: Response) {
    try {
        const professors = await professorService.getProfessorsFromExams();
        return res.send(professors);
    } catch (error) {
        console.log(error);
        return res.sendStatus(500);
}
}