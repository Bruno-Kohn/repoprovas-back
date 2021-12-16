import { Request, Response } from "express";

import * as sendFileService from "../services/sendFileService";

interface sendFileInterface {
    examName: string;
    examLink: string;
    examTypeId: number;
    professorId: number;
    subjectId: number;  
}

export async function sendFile(req: Request, res: Response) {
    try {
        const { examName, examLink, examTypeId, professorId, subjectId } = req.body as sendFileInterface;

        await sendFileService.save({ examName, examLink, examTypeId, professorId, subjectId });
        return res.sendStatus(201).send('Exam sent successfully');
    } catch (error) {
        console.log(error);
        return res.sendStatus(500);
    }
}