CREATE DATABASE analysis_tool;

USE analysis_tool;

CREATE TABLE analysis_tool.employees(
    empID  VARCHAR(10) PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    empTitle VARCHAR(255) NOT NULL,
    admin BIT NOT NULL
);

CREATE TABLE analysis_tool.passwords(
    empID VARCHAR(10) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (empID) REFERENCES analysis_tool.employees(empID)
);
CREATE TABLE analysis_tool.molds(
    moldID  VARCHAR(10) PRIMARY KEY,
    monaNumber VARCHAR(255) NOT NULL,
    material VARCHAR(255) NOT NULL,
    moldMaker VARCHAR(255) NOT NULL
);

CREATE TABLE analysis_tool.machines(
    machineID VARCHAR(10) PRIMARY KEY,
    moldID VARCHAR(10) NOT NULL,
    FOREIGN KEY (moldID) REFERENCES analysis_tool.molds(moldID),
    moldShots INT NOT NULL,
    failedShots INT NOT NULL,
    prodRate INT NOT NULL,
    prod_start_date DATE NOT NULL,
    prod_end_date DATE NOT NULL
);



    