CREATE TABLE EVENT (
employee_code integer PRIMARY KEY,
  operation_datetime timestamp without time zone NOT NULL,
  operation_type character varying(50)NOT NULL
);