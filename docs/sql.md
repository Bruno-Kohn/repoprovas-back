CREATE TABLE "professor" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "professor_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "subject" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"semester_id" integer NOT NULL,
	CONSTRAINT "subject_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "semester" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "semester_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "exams" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"link" TEXT NOT NULL,
	"professor_id" integer NOT NULL,
	"subject_id" integer NOT NULL,
	"exam_type_id" integer NOT NULL,
	CONSTRAINT "exams_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "exam_type" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "exam_type_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "subjects_professors" (
	"id" serial NOT NULL,
	"professor_id" integer NOT NULL,
	"subject_id" integer NOT NULL,
	CONSTRAINT "subjects_professors_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "subject" ADD CONSTRAINT "subject_fk0" FOREIGN KEY ("semester_id") REFERENCES "semester"("id");
ALTER TABLE "exams" ADD CONSTRAINT "exams_fk0" FOREIGN KEY ("professor_id") REFERENCES "professor"("id");
ALTER TABLE "exams" ADD CONSTRAINT "exams_fk1" FOREIGN KEY ("subject_id") REFERENCES "subject"("id");
ALTER TABLE "exams" ADD CONSTRAINT "exams_fk2" FOREIGN KEY ("exam_type_id") REFERENCES "exam_type"("id");
ALTER TABLE "subjects_professors" ADD CONSTRAINT "subjects_professors_fk0" FOREIGN KEY ("professor_id") REFERENCES "professor"("id");
ALTER TABLE "subjects_professors" ADD CONSTRAINT "subjects_professors_fk1" FOREIGN KEY ("subject_id") REFERENCES "subject"("id");






