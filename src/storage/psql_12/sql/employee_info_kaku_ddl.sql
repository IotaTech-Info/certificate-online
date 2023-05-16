------employee_info table------------
CREATE TABLE public."employee_info" (
    employee_code integer NOT NULL,
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
--primary key
ALTER TABLE ONLY public."employee_info"
    ADD CONSTRAINT "employee_info_pkey" PRIMARY KEY (employee_code);