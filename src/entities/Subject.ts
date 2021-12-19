import { Entity, PrimaryGeneratedColumn, Column, ManyToOne,OneToMany, JoinColumn } from "typeorm";
import Semester from "./Semester";
import Exam from "./Exam";
import SubjectProfessor from "./SubjectProfessor";

@Entity("subject")
export default class Subject {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @Column({nullable: true})
  semester_id: number;

  @ManyToOne(() => Semester, semester => semester.subject, { eager: true })
  @JoinColumn({name: 'semester_id'})
  semester: Semester;

  @OneToMany(() => Exam, exams => exams.subject)
  exams: Exam[];

  @OneToMany(() => SubjectProfessor, subjects_professors => subjects_professors.subject)
  subjects_professors: SubjectProfessor[];
}