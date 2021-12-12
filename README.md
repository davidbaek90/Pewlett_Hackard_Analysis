# Pewlett_Hackard_Analysis

## Overview of School District Analysis

### Purpose

#### The purpose of the Pewlett Hackard Analysis is to help Bobby's manager understand the current situation of employee population and prepare for the "silver tsunami" of eligibile employees who are planning on retiring in the near future. The information we need to provide include the number of retiring employees per title and understanding who are eligible to participate in a mentorship program.


Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

## Results

#### 1. Whole list of retiring employees (unfiltered)
- The very first query that was executed by using INNER JOIN command to generated a table of employees who were born in between 1952 and 1955.
- The table yieled a result with 133,776 employee data, which sounds odd at first, because later in the analysis we find out that there are total of 90,398 unique employees.
- From looking at the table, there are multiple employee entries with same name, but with different title.
<p align="center">
<b>List of Reitiring Employees (Uncleaned)</b></br>
    <img src="https://raw.githubusercontent.com/davidbaek90/Pewlett_Hackard_Analysis/main/Resoureces/retirement_titles.png">
</p>

#### 2. List of retiring employees without duplicates
- With the use of DISTINT ON command, we were able to generate a table only showing the unique names of employees, without any duplicates due to multiple positions he/she had in the past.
- The number unique employees is 90,398 from the table below.
<p align="center">
<b>List of Retiring Employees (Wihtout Duplicate)</b></br>
    <img src="https://raw.githubusercontent.com/davidbaek90/Pewlett_Hackard_Analysis/main/Resoureces/unique_titles.png">
</p>

#### 3. List of retiring employee titles and each of their respective employee count
- Using COUNT command, we are able to show the total number of employee that belongs for each titles.
- Out of the total 90,398 employees, 57,668 makes up the employee population with senior title.
<p align="center">
<b>Retiring Employee Titles Count</b></br>
    <img src="https://raw.githubusercontent.com/davidbaek90/Pewlett_Hackard_Analysis/main/Resoureces/retiring_titles.PNG">
</p>

#### 4. List of employees who are eligible for the mentorship program
- Another query was made to identify employees who are born in 1965, as we consider these employees eligible for the mentorship program.
- The queriy yielded 1549 emlployees who are eligible for the mentorship program.
<p align="center">
<b>List of Employees Eligible for Mentorship Program</b>
    <img src="https://github.com/davidbaek90/Pewlett_Hackard_Analysis/blob/main/Resoureces/mentorship_eligibility.png">
</p>

## Summary
#### How many roles will need to be filled as "silver tsunami" begins to amke an impact
- In order to help Bobby's manager prepare for the "silver tsunami", I have generated a table to show a count of retiring employees by title and their respective department, shown in the table below. The table shows the total number of retiring employees in specific department by title. This should help Bobby's manager to put higher hiring effort in the jobs that are in high count. Also, categorizing by department will help Bobby by appropriately allocating the amount of his HR resources in each department, primarily focusing on departments with high retiring count such as Development, Product and Sales department.
<p align="center">
<b>List of Employees Eligible for Mentorship Program</b></br>
    <img src="https://raw.githubusercontent.com/davidbaek90/Pewlett_Hackard_Analysis/main/Resoureces/retiring_titles_bydept.PNG">
</p>

#### Are there enough qualitfied, retirement-ready employees in the department to mentor the next gen?
- It is import to understand if there are sufficient number of qualified mentors that can deliver job specific mentorship to employers. If can assure constant ratio of mentors and mentees, we can better prepare for the "silver tsunami" of retiring employees. To understand if we have sufficient mentors by department, I ran a query of retiring members and used INNER JOIN command to categorize them by department. Finally I used COUNT command to get the total number of eligible mentors by department. The table on the right shows the number of mentors be department. I used INNER JOIN and COUNT command to determine the total count of mentors in each department. The ratio of retiring employees and mentors look proportional. We are better prepared for the "silver tsunami"!
<p align="center">
<b>List of Employees Eligible for Mentorship Program</b></br>
    <img src="https://github.com/davidbaek90/Pewlett_Hackard_Analysis/blob/main/Resoureces/Unique_retiring_employees_bydept.PNG">
    <img src="https://raw.githubusercontent.com/davidbaek90/Pewlett_Hackard_Analysis/main/Resoureces/dept_mentorship_eligibility_count.PNG">
</p>
