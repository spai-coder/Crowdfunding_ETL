# Crowdfunding_ETL

Team members: Jenique Fahie, Sofia Pai, Prachi Patel

## Project Overview:The ETL mini project
- Build an ETL pipeline using Python/Pandas,
using either Python dictionary methods or regular expressions to extract and transform the data.
- After transforming the data, four CSV files will be created and used to create an ERD and a table schema. 
- Finally, upload the CSV file data into a Postgres database.

Data Sources:
Extract data files - crrowdfunding.xlsx and contacts.xlsx

### ETL Process Breakdown:

**Step 1:** Extract Data -Tools/Technologies: Python with libraries such as requests for APIs, pandas for CSVs, or psycopg2/sqlalchemy for databases.
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- A "category" column that contains only the category titles
- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- A "subcategory" column that contains only the subcategory titles

Once all dataframes are cleaned, we exported all of the data into CSV files in the Resources folder. CSV files includes:
- Campaign
- Category
- Contacts
- Subcategory

**Step 2:** Transform Data - Tools/Technologies: Python libraries like pandas 
Option 1 was used to create the Contacts DataFrame by using Python dictionary methods.
- Import the contacts.xlsx file into a DataFrame.
- Iterate through the DataFrame, converting each row to a dictionary.
- Iterate through each dictionary, doing the following:
 Extract the dictionary values from the keys by using a Python list comprehension.
 Add the values for each row to a new list.

**Step 3:** Load Data - Python libraries like SQLAlchemy or pandas for CSV outputs.
Creating dataframes below. 
- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

Database Schema:
crowdfunding_db_schema.sql -- Schema used to create the Crowdfunding_db Database to finalize the ETL process. Imported tables from CSV files created from Jupyter Notebook.

## Conclusion: 

The ERD highlights the relationships between:

- Campaign and Contacts – The contact id serves as the linking element between the Campaign and Contacts entities, enabling the identification of which contacts are associated with a particular campaign. 
- Campaign and category – The category id links the Campaign and category. 
- Campaign and Subcategory – The subcategory id connects the Campaign to a subcategory. 


This diagram is essential for understanding the structure of the database and the connections between tables.

ERD (Entity relationship Diagram)

![schema](https://github.com/user-attachments/assets/f633580f-4e83-4e14-901c-5e96496614c5)




