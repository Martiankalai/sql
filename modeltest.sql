use model;
create table nri_info
(
NRI_ID int primary key not null,
NRI_NAME varchar(10),
AGE int,
DOB date unique,
PHONENO int,
MSALARY_INR int check(MSALARY_INR>200000),
TAX_IN_INR int,
RESI_CITY varchar(10),
WORK_COUNTRY varchar(10),
BIRTH_COUNTRY varchar(10) default "india"
);
select * from nri_info;
