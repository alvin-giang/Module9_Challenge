# Module9_Challenge
## SQL Challenge

## Introduction

In this challenge, as a new data engineer at Pewlett Hackard (a fictional company), my first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files in data folder.

For this project, I will design the table to hold the data from the CSV files, import the CSV files into a SQL database, and then answer the questions about the data. That is, I will perform data modelling, data engineering, and data analysis, respectively.

### Data Modelling

I will inspect the CSV files, and then sketch an ERD of the tables.

### Data Engineering

I use the provided information to create a table schema for each of the six CSV files. It includes:
    - Specify data types, primary keys, foreign keys, and other constraints.
    - For the primary keys, I verify that the column is unique. Otherwise, I will create a composite key, which takes two primary keys to uniquely identify a row.
    - Create the tables in the correct order to handle the foreign keys\
Then  I import each CSV file to into its corresponding SQL table.

### Data Analysis
1. List the employee number,last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date foe the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee's number, last name, first name, and department name.
5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)