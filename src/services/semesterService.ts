import { getRepository } from "typeorm";

import Semester from '../entities/Semester';

export async function getSemesterFromSubjects() {
    const query = getRepository(Semester);

    const semester = query.find({
        relations: [
            "subjects",
            "subjects.exams",
            "subjects.exams.professor"
        ]
    });

    const rel = await query.find({ relations: ["subjects"] });
    return rel;
}