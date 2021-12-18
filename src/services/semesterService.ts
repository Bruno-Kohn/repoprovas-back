import { getRepository } from "typeorm";

import Semester from '../entities/Semester';

export async function getSemesterFromSubjects() {
    const query = getRepository(Semester);

    const semester = query.find({
        relations: [
            "subject",
            "subject.exams",
            "subject.exams.professor"
        ]
    });

    const rel = await query.find({ relations: ["subject"] });
    return rel;
}