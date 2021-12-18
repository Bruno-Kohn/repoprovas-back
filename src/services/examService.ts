import { getRepository } from "typeorm";
import Exam from '../entities/ExamType';

interface FilesInterface {
    name: string;
    link: string;    
    professor_id: number;
    subject_id: number;
    exam_type_id: number;
}

export async function postExamFunc(params: FilesInterface) {
    const sendFileRepo = getRepository(Exam);
    await sendFileRepo.insert(params);
}

