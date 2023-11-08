/*7 students;  3 in the same city; Dupont, Durand, Martin; 2 cities with "LL"*/
INSERT INTO Student (numstud, name, firstname, dateofbirth, street, postalcod, city)
VALUES
  (1, 'Dupont', 'Alice', '1995-05-10', 'street 1', '78945', 'Lyon'),
  (2, 'Durand', 'Bob', '1996-08-15', 'street 2', '68467', 'Hillingdon'),
  (3, 'Wilson', 'Charlie', '1997-02-20', 'street 3', '45678', 'Lyon'),
  (4, 'Smith', 'David', '1994-04-12', 'street 4', '25814', 'Lyon'),
  (5, 'Johnson', 'Eva', '1993-06-25', 'street 5', '36947', 'Hillingdon'),
  (6, 'Brown', 'Frank', '1992-09-30', 'street 6', '45871', 'Camberwell'),
  (7, 'Martin', 'Grace', '1991-12-05', 'street 7', '91652', 'Camberwell');

/*3 subjects coefficient >= 1; one of which > 1*/
INSERT INTO Matter (codemat, wording, coef)
VALUES
  ('Mat', 'Mathematics', 1.5),
  ('Sci', 'Science', 1.0),
  ('Eng', 'English', 2.0);

/*5 tests; 3 of which between 1/1/2014 and 30/6/2014 (inclusive); 2 subjects with more than one test.*/
INSERT INTO Test (numtest, testdate, place, codemat)
VALUES
  (1, '2014-01-15', 'Class 1', 'Mat'),
  (2, '2014-03-20', 'Class 2', 'Sci'),
  (3, '2014-05-10', 'Class 1', 'Mat'),
  (4, '2014-08-15', 'Class 4', 'Eng'),
  (5, '2014-10-30', 'Class 2', 'Sci');

/*30 marks; 18 of which >= 10, 2 = 20; 2 tests with 2 different subjects and less than 6 students marked per test
*/
INSERT INTO Notation (numstud, numtest, score) 
VALUES 
(1, 4, 13),
(2, 3, 10),
(1, 1, 13),
(3, 4, 11),
(1, 2, 19),
(1, 5, 20),
(7, 3, 18),
(4, 4, 10),
(2, 1, 14),
(7, 1, 20),
(2, 2, 19),
(2, 5, 16),
(3, 1, 11),
(4, 1, 10),
(3, 5, 14),
(5, 3, 12),
(6, 4, 16),
(4, 5, 15),
(7, 2, 7),
(3, 2, 3),
(5, 5, 6),
(1, 3, 5),
(5, 1, 9),
(4, 2, 8),
(7, 4, 7),
(6, 1, 4),
(5, 2, 0),
(6, 5, 7),
(6, 2, 2),
(7, 5, 9);