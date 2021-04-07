# Pewlett-Hackard-Analysis

## Overview of Pewlett-Hackard Analysis

The purpose of this analysis is to determine the number if retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 

## Results of Pewlett-Hackard Analysis

To begin, we started with finding all employees that were born between 1952 and 1955. The image below is the resulting table.

![image](https://github.com/snkty8/Pewlett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis%20Folder/Queries/retirement_titles_table.png)

Looking closely the table above has many duplicates.  This is due to the employees having different roles in the company throughout the years.  More filtering was done to remove the duplicates, and capture the employees current role.  This new table is shown below.

![image](https://github.com/snkty8/Pewlett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis%20Folder/Queries/unique_titles_table.png)


With this information we can determine the percentage of employees eligible for retirement.  
- Total Number of Employees (from employees table): 300,024
- Number of Emoployees eligible for retirement (from unique_titles table): 90,398
- Percentage of Employees eligible for retirement: 30.1%
- Since a little over 30% of the employees are eligibe for retirement we can a few decisions to make:
    - Of this 30% we can individually see which of these employees are willing and ready for retirement
    - Are any willing to act as mentors for new employees and current employees 
    - Come up with a retirement package 
    - Determine what employees are due and prepared for promotions 


Next, we determined how employees in each department are eligible for retirement.  This is displayed in the table below:

![image](https://github.com/snkty8/Pewlett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis%20Folder/Queries/retiring_titles_table.png)

Lastly, we created a table to display what employees are ready for a mentorship program.  This table is displayed below:

![image](https://github.com/snkty8/Pewlett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis%20Folder/Queries/mentorship_eligibility_table.png)

Just like we created a percentage of employees eligible for retirement, we can also do the same for employees ready for the mentorship program:
    - Total Number of Employees (from employees table): 300,024
    - Employees eligibile for mentoring (from mentorship_eligibilty_table): 1,940
    - Percentage of employees eligibile for mentorship: 0.64% 

## Summary of Pewlett-Hackard Analysis

A few questions to ask:
1. What departments are the employees in that are eligible for the mentorship program: 
    The results are displayed below:

    ![image](https://github.com/snkty8/Pewlett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis%20Folder/Queries/mentorship_ready_titles.png)

2.  Who are the employees eligible for the mentorship program that are currently engineers?
    Table below gives that information:

    ![image](https://github.com/snkty8/Pewlett-Hackard-Analysis/blob/main/Pewlett-Hackard-Analysis%20Folder/Queries/engineer_team_table.png)