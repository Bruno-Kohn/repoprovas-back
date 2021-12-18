import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from "typeorm";
import Professor from "./Professor";
import Subject from "./Subject";

@Entity("subjects_professors")
export default class SubjectProfessor {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  professor_id: number;
    
  @Column()
  subject_id: number;
    
  @ManyToOne(() => Subject, (subject) => subject.subjects_professors, { eager: true })
  @JoinColumn({name: 'subject_id'})
  subject: Subject;
    
  @ManyToOne(() => Professor, (professor) => professor.subjects_professors, { eager: true })
  @JoinColumn({name: 'professor_id'})
  professor: Professor;

  professorSubject() {
    return {
      id: this.professor.id,
      name: this.professor.name
    }
  }
}