import { getRepository } from "typeorm";
import Exam from '../entities/Exam';

interface FilesInterface {
    name: string;
    link: string;    
    exam_type_id: number;
    professor_id: number;
    subject_id: number; 
}

export async function postExamFunc(params: FilesInterface) {
    const sendFileRepo = getRepository(Exam);
    await sendFileRepo.insert(params);
}

