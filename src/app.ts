import './setup';

import express from 'express';
import cors from 'cors';
import 'reflect-metadata';

import connectDatabase from './database';

import * as examController from './controllers/examController';
import * as examTypeController from './controllers/examTypeController';
import * as subjectController from './controllers/subjectController';
import * as professorsController from './controllers/professorsController';
import * as semesterController from './controllers/semesterController';

const app = express();
app.use(cors());
app.use(express.json());

app.post("/exams", examController.postExam); 
app.get("/exams/types", examTypeController.getExamTypes); 
app.get('/subjects', subjectController.getSubjects); 
app.get('/subjects/:id/professors', professorsController.getProfessorFromSubject); 
app.get('/professors/exams', professorsController.getProfessorsFromExams); 
app.get('/semester/subjects', semesterController.getSemesterFromSubjects); 

export async function init () {
  await connectDatabase();
}

export default app; 