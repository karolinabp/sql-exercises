/*
• Wording and coefficient (expressed as a percentage) of each subject (3 points)
• Sum of coefficients of all subject (3 points)
*/

select  wording, (coef * 100)  coef_percentage from Matter;

select sum(coef) as sum_coef from Matter;
