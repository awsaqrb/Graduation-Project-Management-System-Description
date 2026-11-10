CREATE TABLE EVALUATIONS (
    evaluation_id NUMBER,
    project_id NUMBER NOT NULL,
    evaluator_id NUMBER NOT NULL,
    evaluated_on DATE,
    score NUMBER(5,2),
    notes VARCHAR2(1000),

    CONSTRAINT pk_evaluations
        PRIMARY KEY (evaluation_id),

    CONSTRAINT fk_evaluation_project
        FOREIGN KEY (project_id)
        REFERENCES PROJECTS(project_id),

    CONSTRAINT fk_evaluation_supervisor
        FOREIGN KEY (evaluator_id)
        REFERENCES SUPERVISORS(supervisor_id)
);
