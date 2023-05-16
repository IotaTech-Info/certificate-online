CREATE TABLE EMPLOYEE_INFO (
    employee_code integer PRIMARY KEY,
    lastname character varying(50) NOT NULL,
    firstname character varying(50) NOT NULL,
    birthday date NOT NULL,
    sex character varying(1) NOT NULL,
    join_date date NOT NULL,
    city character varying(50) NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    update_datetime timestamp without time zone,
    department character varying(50),
    position character varying(50),
    superior_employee_code integer REFERENCES EMPLOYEE_INFO (employee_code)
);
