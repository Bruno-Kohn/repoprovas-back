import { getRepository, Repository } from "typeorm";
import SubjectProfessor from '../entities/SubjectProfessor';
import Professor from '../entities/Professor';

export async function checkSubject(subjectId: number) {
    const query = getRepository(SubjectProfessor);

    const subjectProfessors = await query.find({
        where: { subjectId },
        relations: ["professor"],
    });

    const professors = subjectProfessors.map((i) => i.professor);

    return professors;
}

export async function getProfessorsFromExams() {
    const query = getRepository(Professor);

    const professors = await query.find({
        relations: ['exams', 'exams.subject'],
    });

    return professors;
}

