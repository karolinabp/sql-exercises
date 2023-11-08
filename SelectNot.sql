
/* Total number of tests (1 point)*/
select count(*) as tests from test;

/* List of score, specifying for each the name and first name of the student who obtained it (1 point)*/
select b.firstname, b.name, a.score
from Notation a, Student b
where a.numstud = b.numstud;

/* List of score, specifying for each the name and first name of the student who obtained it and the
wording of the matter concerned (1 point)*/
select b.firstname, b.name, d.wording, a.score
from Notation a, Student b, Test c, Matter d
where a.numstud = b.numstud
and a.numtest = c.numtest
and c.codemat = d.codemat;


/* List of score greater than or equal to 10 (1 point)*/
select a.firstname, a.name, b.score
from Student a, Notation b
where a.numstud = b.numstud
and b.score >= 10;


/*Last name and first name of the students who obtained at least a score equal to 20 (1 point)*/
select a.firstname, a.name, b.score
from Student a, Notation b
where a.numstud = b.numstud
and b.score = 20;

/* Average scores for each student (indicate name and first name) (1 point)*/
select a.firstname, a.name, avg(b.score) as average
from Student a, Notation b
where a.numstud = b.numstud
group by a.firstname, a.name;


/* List of tests whose date is between January 1 and June 30, 2014 (1 point)*/
select *
from Test
where testdate between '2014-01-01' and '2014-06-30';

/* List of tests (number, date and place) including the matter of the subject (1 point)*/
select a.numtest, a.testdate, a.place, b.wording
from Test a, Matter b
where a.codemat = b.codemat;


/* Average scores for each student (indicate name and first name), ranked from best to worst (1 point)*/
select a.firstname, a.name, avg(b.score) as average
from Student a, Notation b
where a.numstud = b.numstud
group by a.firstname, a.name
order by average desc;



/* Average scores for matter (indicate the wording) comprising more than one test (4 points)*/
/*here i use round() because it was giving me too many decimal  */
select a.wording, round(avg(b.score),2) as average
from Matter a, Notation b, Test c
where a.codemat = c.codemat
and c.numtest = b.numtest
group by a.wording
having count(c.numtest) > 1;



/* Average of score obtained in the tests (indicate the number of the test) where less than 6 students
were rated (4 points)*/

select a.numtest, count(b.numstud) as students, avg(b.score) as average
from Test a, Notation b
where a.numtest = b.numtest
group by b.numtest
having count(b.numstud) < 6;

