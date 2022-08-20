# Business Analysis

--- 

## Intro

Using the collected data from my personal family's business, I worked to create a visible correlation between three different stores (Kent, Burien and University Place). Ever since opening the business in 2017, my family recorded each sales everyday to see the growth of the business. Data were collected over Google Sheets and downloaded as Comma Separated Values (CSV) file. 

---
## Problem Statement:

Taking the collected real life data, how can I make it comprehendable to my clients? In this case, my parents.

---

## Used Tools

| Python          | SQL    |
|-------------------|---------------|
| Explanatory Data Analysis (EDA) | Create Database |
| Feature Analysis | Collect and Create tables |

---

## EDA Process

In the initial Google Sheets, there was a handful of cleaning up to do to make the data analyze-able. 
1. First and foremost, we needed to determine if there are any columns unnecessary for the final analysis. In case of University Place file, we needed to omit over 30 columns. 
2. The most basics of EDA is to check for null values. Using simple python code, we were able to see there were quite a bit of them. Instead of throwing away all the rows with the null values, we put a threshold on the data to omit only the rows with X amount of null values. 
3. When checking the dtypes or data types of the columns they were all in objects instead of floats or integers even though they were numerical values. In order for me to do that, we needed to delete the symbols in the numerical values, such as $ signs and commas. Then, we changed the dtypes into floats.
4. Another procedure was to combine 4 columns into one so that it is easier to compare between different stores. After channging the dtypes into floats, this was able to be done since we could not add objects together but could add floats. 

After finishing the EDA of University Place, the rest came smoothly. For example, although Kent and Burien did not have as many columns to delete, the idea was the same. i followed the same procedure to make Kent and Burien data organized.

---

## SQL Process

Now that we have the EDA done using Python, it is ready to be imported into the Azure SQL Server. 
1. In order to work away from the master database, I created a database called ConveniencestoreDB. 
2. In that Database, I have imported Burien, Kent and University Place. 
3. One flaw I had seen while working with Python to clean out the null and empty rows is that I am not able to to identify the tables by locations when looking at them all together. So, to fix this issue, I thought it was proper for me to make the reference table with the unique identifiers of the location ID. In the third and fourth section of the query, how we chose to identify them is through labeling them as numbers 1 through 3.
4. Next, I think it is proper to include a main table called DailyTransaction and bring the tables into one. Since University Place table has the most columns that overlap with Burien and Kent columns, I included all the columns from University Place. I understand that there will be many null values later on when adding Kent and Burien in the DailyTransaction table, which I fixed when adding them.
5. I believe in all the steps, adding the three tables into the DailyTransaction table is the most difficult to comprehend what happened. 

