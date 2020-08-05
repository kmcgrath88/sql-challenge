# sql-challenge

# Background<br>
It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:<br>
Data Engineering <br>
Data Analysis<br>

# Instructions<br>
Data Modeling<br>
Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like http://www.quickdatabasediagrams.com.<br>
<br>
Data Engineering<br>
Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.<br>
For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.
Be sure to create tables in the correct order to handle foreign keys.<br>
Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.<br>
<br>
Data Analysis<br>
Once you have a complete database, do the following:<br>
1. List the following details of each employee: employee number, last name, first name, sex, and salary.<br>
2. List first name, last name, and hire date for employees who were hired in 1986.<br>
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.<br>
4. List the department of each employee with the following information: employee number, last name, first name, and department name.<br>
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."<br>
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.<br>
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. <br>
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.<br>
<br>
Bonus (Optional)<br>
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:<br>
Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:<br>
from sqlalchemy import create_engine<br>
engine = create_engine('postgresql://localhost:5432/<your_db_name>')<br>
connection = engine.connect()<br>
<br>
Create a histogram to visualize the most common salary ranges for employees.<br>
<br>
Create a bar chart of average salary by title.<br>
<br>
Epilogue<br>
Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.<br>