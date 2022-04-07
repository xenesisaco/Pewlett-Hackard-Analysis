# Pewlett-Hackard-Analysis

## Overview of the analysis:
This particular company is looking at employees who are ready to retire and needed assistance in locating those employees using tables that only had partial information. 

## Purpose
By combining and filtering data throughout the tables provided, employees ready to retire were summarized using 6 different tables as seen below. Each one having a connection to another through a variety of information. Using this information and combinging the nessecary data, the company is now able to see which employees are about to retire.  


![EmployeeDB png](https://user-images.githubusercontent.com/98041751/162087040-dca73721-097b-46be-b4be-b62547ab340e.png)


## Results:
- The retirement_titles data shows the individuals by emp_no, first_name, last_name, title and the hire-date to the end-date (to_date) of hire. Employees here are born in the retirement years specified. With a to_date of '9999-01-01' signifies that they are still working at the company. Meaning, that out of 133,776 employees, 61,318 are still working, which is about 45%. However, this table is a bit skewed since it may list employees move that once with different job titles over the years (promotions / demotions, etc.)
- To filter out the duplicate emplyees in the retirement_titles, a unique_titles was created to only list 1 unique title per employee. The results came back with 72,458. This does include a hire-date of '999-01-01', so these would be the employees still at the company. 
- To get an overall picture of the staff leaving the company by title, a retiring_titles table was created, as seen below. The main title retiring soon would be the Senior enginees and the Seniior staff, which in total account for 50,842 employees!
- Lastly a table was created to hold employees who are elegible for the mentorship_program, which include employees who are retiring and continue to work for the company. The count for these employees is only 1549. 

### Summary 
Per the analysis, about 64% of senior staff are about to retire within 5 to 10 years. This is a considerable amount and the company should probably look for way to have a continuity plan, which is why a mentorship program is being created. I would also recommend the company to look at the younger generation and see if there is a disparity of ages throughout the organization. If the organization just has primairily older folks, then theyre in for a rough ride in the near future! 

### Questions
-How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The number of employees getting ready to retire on this 'silver tsunami' is 72,458 as seen below:

![image](https://user-images.githubusercontent.com/98041751/162093590-db11353b-d32c-4b2c-a923-0a1f42e9c5e0.png)

-Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

As seen below, there are only 1,549 elibigble mentors, while the number of retiring employees are above 70,000! My answer would be no, but depending on present expirience, this might be enough. 

![image](https://user-images.githubusercontent.com/98041751/162094378-71734778-05f8-40cf-b60d-fe52c5dabfcc.png)
