Project Title: Immigration & Entrepreneurship

Team Members:
	Ethan Martin
	Kannan Sekkappan
	Candice Sessa

## Project Report

Data Set 1 | Ethan | csv files U.S. Passport applications
https://www.kaggle.com/jboysen/us-perm-visas#us_perm_visas.csv

	Pull CSV file on U.S. Permanent Visa applications. We will 	focus on location and decision date, pulling for 2014 - 	2016
	
	Upload into Postgres SQL, depending on size of files, may 	upload into AmazonS3

	Will upload a copy of SQL script file for replication

Data Set 2 | Kannan | csv file U.S. Entreprenuership
https://www.census.gov/data/developers/data-sets/ase.html

	Kannan will pull Census data, focus on entrepreneurship, 	filtering on years, 2014-2016, and combining all years 	into one table

	Upload into Postgres SQL, depending on size of files, may 	upload into AmazonS3
	
	Will upload a copy of SQL script file for replication


* **T**ransform:

Candice & Kannan
	
cleaning:column compression of both data sets

joining: combining multiple years for Census Data

filtering:geographical areas for both data sets, years for permanent passport data 

aggregating:depending on intial pulls aggregating may occur

The final dataset will be uploaded into MongoDB

* **L**oad:

We are selecting two datasets, one is on the number of applications for U.S. passports, and the second is U.S. Census data on the level of entreprenuership by geographical area. We hypothesize, that these two are positively correlated, with areas that have higher levels of immigration also have higher levels of entreprenuership. 

Final dataset will be a non-relation database inside of MongoDB
