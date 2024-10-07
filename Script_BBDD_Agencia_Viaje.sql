Database: Agencia_Viaje

DROP DATABASE IF EXISTS "Agencia_Viaje";


CREATE DATABASE "Agencia_Viaje"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


CREATE TABLE client (
	id VARCHAR(10),
	name VARCHAR(20),
	lastName VARCHAR(20),
	birthDate DATE,
	email VARCHAR(30),
	PRIMARY KEY(id)
);

CREATE TABLE addressClient(
	id VARCHAR(10),
	idClient VARCHAR(10),
	calle VARCHAR(10),
	carrera VARCHAR(10),
	numero INT,
	city VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_client_addressClient 
	FOREIGN KEY (idClient) REFERENCES client (id)	
);

CREATE TABLE telephoneType (
	id VARCHAR(10),
	type VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE telephoneClient(
	id VARCHAR(10),
	idClient VARCHAR(10),
	idType VARCHAR(20),
	number VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_client_telephoneClient 
	FOREIGN KEY (idClient) REFERENCES client (id),
	CONSTRAINT fk_telephoneType_telephoneClient 
	FOREIGN KEY (idType) REFERENCES telephoneType (id)
);


CREATE TABLE department (
	id VARCHAR(10),
	name VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE jobTitle(
	id VARCHAR(10),
	name VARCHAR(20),
	idDepartment VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_jobTitle_department
	FOREIGN KEY (idDepartment) REFERENCES department (id)
);

CREATE TABLE administrator (
	id VARCHAR(10),
	name VARCHAR(20),
	lastName VARCHAR(20),
	birthDate DATE,
	email VARCHAR(30),
	startDate DATE,
	idJobTitle VARCHAR(10),
	salary MONEY,
	userA VARCHAR(10),
	password VARCHAR (20),
	PRIMARY KEY(id),
	CONSTRAINT fk_administrator_jobTitle
	FOREIGN KEY (idJobTitle) REFERENCES jobTitle (id)
);

CREATE TABLE addressAdministrator(
	id VARCHAR(10),
	idAdmo VARCHAR(10),
	calle VARCHAR(10),
	carrera VARCHAR(10),
	numero INT,
	city VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_administrator_addressAdministrator 
	FOREIGN KEY (idAdmo) REFERENCES administrator (id)	
);

CREATE TABLE telephoneAdministrator(
	id VARCHAR(10),
	idAdmo VARCHAR(10),
	idtype VARCHAR(20),
	number VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_administrator_telephoneAdministrator 
	FOREIGN KEY (idAdmo) REFERENCES administrator (id),
	CONSTRAINT fk_telephoneType_telephoneAdministrator 
	FOREIGN KEY (idType) REFERENCES telephoneType (id)
);

CREATE TABLE zone (
	id VARCHAR(10),
	name VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE travelManager (
	id VARCHAR(10),
	name VARCHAR(20),
	lastName VARCHAR(20),
	birthDate DATE,
	email VARCHAR(30),
	startDate DATE,
	idzone VARCHAR(10),
	salary NUMERIC(10,2),
	commission NUMERIC(2,2),
	userT VARCHAR(10),
	password VARCHAR (20),
	PRIMARY KEY(id),
	CONSTRAINT fk_travelManager_zone
	FOREIGN KEY (idzone) REFERENCES zone (id)
);

CREATE TABLE addressTravelManager(
	id VARCHAR(10),
	idTravelManager VARCHAR(10),
	calle VARCHAR(10),
	carrera VARCHAR(10),
	numero INT,
	city VARCHAR(20),
	country VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_travelManager_addressTravelManager
	FOREIGN KEY (idTravelManager) REFERENCES travelManager(id)
);

CREATE TABLE telephoneTravelManager(
	id VARCHAR(10),
	idTravelManager VARCHAR(10),
	idtype VARCHAR(20),
	number VARCHAR(20),
	PRIMARY KEY(id),
	CONSTRAINT fk_travelManager_telephoneTravelManager
	FOREIGN KEY (idTravelManager) REFERENCES travelManager (id),
	CONSTRAINT fk_telephoneType_telephoneTravelManager
	FOREIGN KEY (idType) REFERENCES telephoneType (id)
	
);

CREATE TABLE travel(
	id VARCHAR(10),
	cityName VARCHAR(20),
	countryName VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE clientTravel (
	id VARCHAR(10),
	idClient VARCHAR(10),
	idTravel VARCHAR(10),
	travelDate DATE,
	PRIMARY KEY(id),
	CONSTRAINT fk_clientTravel_travel
	FOREIGN KEY (idTravel) REFERENCES travel (id),
	CONSTRAINT fk_clientTravel_client
	FOREIGN KEY (idClient) REFERENCES client (id)
);

CREATE TABLE typeService (
	id VARCHAR(10),
	type VARCHAR(20),
	PRIMARY KEY(id)
);


CREATE TABLE supplier (
	id VARCHAR(10),
	platform VARCHAR(20),
	idType VARCHAR(10),
	PRIMARY KEY(id),
	CONSTRAINT fk_supplier_typeService
	FOREIGN KEY (idType) REFERENCES typeService (id)
);