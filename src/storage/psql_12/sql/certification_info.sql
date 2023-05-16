------certification_info table------------
CREATE TABLE public."certification_info"(
    certification_id  integer NOT NULL,
    certification_name  character varying(50) NOT NULL,
    expiration_date  integer,
    issuing_authority  character varying(50) NOT NULL,
    certification_level  character varying(1) NOT NULL,
    certification_tag  character varying(10)
);
ALTER TABLE public."certification_info" OWNER TO "user";
--primary key
ALTER TABLE ONLY public."certification_info"
    ADD CONSTRAINT "certification_info_pkey" PRIMARY KEY (certification_id);