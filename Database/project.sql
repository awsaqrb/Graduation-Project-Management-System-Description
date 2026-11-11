/* 4. PROJECTS TABLE */

CREATE TABLE PROJECTS (
    project_id NUMBER,
    team_id NUMBER NOT NULL,
    supervisor_id NUMBER,
    title VARCHAR2(200) NOT NULL,
    pr_description VARCHAR2(1000),
    submitted_on DATE,
    approval_status VARCHAR2(20) DEFAULT 'PENDING',
    decision_on DATE,

    CONSTRAINT pk_projects
        PRIMARY KEY (project_id),

    CONSTRAINT fk_project_team
        FOREIGN KEY (team_id)
        REFERENCES TEAMS(team_id),

    CONSTRAINT fk_project_supervisor
        FOREIGN KEY (supervisor_id)
        REFERENCES SUPERVISORS(supervisor_id),

    CONSTRAINT chk_project_status
        CHECK (approval_status IN
        ('PENDING', 'APPROVED', 'REJECTED')),

    CONSTRAINT chk_approved_supervisor
        CHECK (
            approval_status <> 'APPROVED'
            OR supervisor_id IS NOT NULL
        )
);


/* ONE APPROVED PROJECT PER TEAM */

CREATE UNIQUE INDEX uq_one_approved_project
ON PROJECTS (
    CASE
        WHEN approval_status = 'APPROVED'
        THEN team_id
    END
);