/*
• List of all students (1 point)
• List of all students, sorted in reverse alphabetical order (1 point)
• Last name and first name of students domiciled in Lyon (1 point)
• Last name, first name and city of students whose city contains the string « LL » (1 point)
• First name of students with Dupont, Durand or Martin names (1 point)
*/

select * from Student;

select * from Student order by name desc, firstname desc;

/*I use to include the field with the condition in the select statement to be sure tha it is met*/

select name, firstname, city from Student where city = "Lyon";

select name, firstname, city from Student where city like '%LL%';

select firstname, name from Student where name in ('Dupont', 'Durand', 'Martin');