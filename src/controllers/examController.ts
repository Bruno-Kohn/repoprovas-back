import { Request, Response } from "express";

import * as examService from "../services/examService";

interface postExamInterface {
    name: string;
    link: string;
    exam_type_id: number;
    professor_id: number;
    subject_id: number;  
}

export async function postExam(req: Request, res: Response) {
    try {
        const { name, link, exam_type_id, professor_id, subject_id } = req.body as postExamInterface;

        examService.postExamFunc({ name, link, exam_type_id, professor_id, subject_id });
        return res.sendStatus(201).send('Exam sent successfully');
    } catch (error) {
        console.log(error);
        return res.sendStatus(500);
    }
}