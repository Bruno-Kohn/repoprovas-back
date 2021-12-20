import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from "typeorm";
import Subject from "./Subject";
import ExamType from "./ExamType";
import Professor from "./Professor";

@Entity("exams")
export default class Exam {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;
    
  @Column()
  link: string;

  @Column()
  professor_id: number;

  @Column()
  subject_id: number;

  @Column()
  exam_type_id: number;
    
  @ManyToOne(() => Professor, (professor) => professor.exams, { eager: true })
  @JoinColumn({name: 'professor_id'})
  professor: Professor;  

  @ManyToOne(() => Subject, (subject) => subject.exams, { eager: true })
  @JoinColumn({name: 'subject_id'})
  subject: Subject;  

  @ManyToOne(() => ExamType, (exam_type) => exam_type.exams, { eager: true })
  @JoinColumn({name: 'exam_type_id'})
  exam_type: ExamType;
}