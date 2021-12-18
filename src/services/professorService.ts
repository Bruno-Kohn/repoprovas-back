import { getRepository } from "typeorm";
import SubjectProfessor from '../entities/SubjectProfessor';
import Professor from '../entities/Professor';

export async function checkSubject(subject_id: number) {
    const query = getRepository(SubjectProfessor);

    const subjectProfessors = await query.find({subject_id});

    const professors = subjectProfessors.map((i) => i.professorSubject());
    console.log(professors);

    return professors;
}

export async function getProfessorsFromExams() {
    const query = getRepository(Professor);

    const professors = await query.find();

    return professors;
}

