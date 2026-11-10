CREATE TABLE SUPERVISORS (
    supervisor_id NUMBER,
    full_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(150) NOT NULL,
    department VARCHAR2(100),

    CONSTRAINT pk_supervisors
        PRIMARY KEY (supervisor_id),

    CONSTRAINT uq_supervisor_email
        UNIQUE (email)
);
