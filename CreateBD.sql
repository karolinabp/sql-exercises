CREATE DATABASE schoolDB;

CREATE TABLE Student (
    numstud int NOT NULL PRIMARY KEY,
    name char(40) NOT NULL,
    firstname char(40) NOT NULL,
    dateofbirth date,
    street char(60),
    postalcod char(5),
    city char(20)
);

CREATE TABLE Matter (
    codemat char(10) NOT NULL PRIMARY KEY,
    wording char(20),
    coef float
);

CREATE TABLE Test (
    numtest int NOT NULL PRIMARY KEY,
    testdate date,
    place char(40),
    codemat char(10),
    constraint fk_codemat_test FOREIGN KEY (codemat) REFERENCES Matter(codemat)
);

CREATE TABLE Notation (
    numstud int NOT NULL,
    numtest int NOT NULL,
    score float,
    constraint pk_numstud_numtest PRIMARY KEY (numstud, numtest),
    constraint fk_numtest_notation foreign key (numstud) references Student(numstud),
    constraint fk_numtest_notation foreign key (numtest) references Test(numtest)
);
