-- creating table
-- create table census_ASE(
-- geo_id_code VARCHAR(100),
-- geo_area_name VARCHAR(100),
-- _2012_naics_code VARCHAR(100),
-- _gender__ethnicity__race___veteran_status_code VARCHAR(100),
-- _years_in_business_code VARCHAR(100),
-- geo_id_code1 INTEGER,
-- geo_area_name1 INTEGER,
-- _2012_naics_code1 INTEGER,
-- _gender__ethnicity__race___veteran_status_code1 INTEGER,
-- _years_in_business_code1 INTEGER,
-- year NUMERIC,
-- num__owners__respondent_firms_w_paid_emp_ NUMERIC,
-- per__num__owners__respondent_firms_w_paid_emp_per_ NUMERIC,
-- _se__num__owners__respondent_firms_w_paid_emp_per_ NUMERIC
-- 	);

-- creating crosswalk files between categorical data and corresponding numbers
-- have to export manually, permission issues between PGadmin and folder
-- PGadmin coding export can not use relative paths
create table geo_codes as
select distinct geo_id_code, geo_id_code1 
from census_ASE
order by geo_id_code1 asc;

create table geo_area as
select distinct geo_area_name, geo_area_name1 
from census_ASE
order by geo_area_name1 asc;

create table naics as
select distinct _2012_naics_code, _2012_naics_code1 
from census_ASE
order by _2012_naics_code1 asc;

create table demo as
select distinct _gender__ethnicity__race___veteran_status_code, _gender__ethnicity__race___veteran_status_code1 
from census_ASE
order by _gender__ethnicity__race___veteran_status_code1 asc;

create table yrs_bus as
select distinct _years_in_business_code, _years_in_business_code1 
from census_ASE
order by _years_in_business_code1 asc;

-- reducing columns to coded categorical and remaining columns
drop table census;
create table census as
select 
geo_id_code1 as geo_id,
geo_area_name1 as geo_area,
_2012_naics_code1 as NAICS,
_gender__ethnicity__race___veteran_status_code1 as gender_eth_race_vet,
_years_in_business_code1 as yrs_bus,
year,
num__owners__respondent_firms_w_paid_emp_ as num_bus_paid_emp,
per__num__owners__respondent_firms_w_paid_emp_per_ as per_bus_paid_emp,
_se__num__owners__respondent_firms_w_paid_emp_per_ as se_bus_paid_emp

from census_ASE;

select * from census;

