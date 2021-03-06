import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from "typeorm";
import Subject from "./Subject";

@Entity("semester", {
  orderBy: {id: 'ASC'}
})
export default class Semester {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;  
    
  @OneToMany(() => Subject, subject => subject.semester)
  subject: Subject[];
}