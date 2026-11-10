
-- Graduation Project Management System
-- Table: MILESTONES

CREATE TABLE MILESTONES (
    milestone_id NUMBER,
    project_id NUMBER NOT NULL,
    stage_name VARCHAR2(100) NOT NULL,
    stage_order NUMBER,
    start_on DATE,
    due_on DATE,
    progress_pct NUMBER(5,2) DEFAULT 0,
    completed_on DATE,

    CONSTRAINT pk_milestones PRIMARY KEY (milestone_id),
    CONSTRAINT fk_milestone_project FOREIGN KEY (project_id)
        REFERENCES PROJECTS(project_id),
    CONSTRAINT chk_progress CHECK (progress_pct BETWEEN 0 AND 100),
    CONSTRAINT chk_milestone_dates CHECK (
        due_on IS NULL OR start_on IS NULL OR due_on >= start_on
    )
);
