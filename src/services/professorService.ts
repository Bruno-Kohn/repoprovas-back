import { getRepository, Repository } from "typeorm";
import SubjectProfessor from '../entities/SubjectProfessor';

export async function checkSubject(subjectId: number) {
    const query = getRepository(SubjectProfessor);

    const subjectProfessors = await query.find({
        where: { subjectId },
        relations: ["professor"],
    });

    const professors = subjectProfessors.map((i) => i.professor);

    return professors;
}