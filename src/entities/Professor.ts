import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from "typeorm";
import Exam from "./Exam";
import SubjectProfessor from "./SubjectProfessor";

@Entity("professor")
export default class Professor {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @OneToMany(() => Exam, (exams) => exams.professor)
  exams: Exam[];

  @OneToMany(() => SubjectProfessor, (subjects_professors) => subjects_professors.professor_id)
  subjects_professors: SubjectProfessor[];
}