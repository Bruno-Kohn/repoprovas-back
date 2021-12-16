import { getRepository } from 'typeorm';

import examType from '../entities/examType';

export async function getExamTypes() {
    const types = await getRepository(examType).find();
    return types;
}