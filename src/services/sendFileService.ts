import { getRepository } from "typeorm";
import SendFile from '../entities/SendFile';

interface FilesInterface {
    name: string;
    link: string;
    examTypeId: number;
    professorId: number;
    subjectId: number;
}

export async function SendFile(params: FilesInterface) {
    const sendFileRepo = getRepository(SendFile);
    await sendFileRepo.insert(params);
}