import { getRepository } from 'typeorm';

import ExamType from '../entities/ExamType';

export async function getExamTypes() {
    const types = await getRepository(ExamType).find();
    return types;
}