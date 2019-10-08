
use task2;
/*
TASK 2
------------
1.	Your Instructor has given you four files that came from an obsolete database and it is your job to migrate this data into a sql server database. 
Once the data is added to sql server you need to check the data and setup the relationships between the tables.	
*/


Answer :
1.Right click Database Task2.
2.Click Tasks
3.Click Import Flat File (Do it for 4 files). 


/*
2.	Once you have finished this, create a query that displays :CompanyName, Address, of the customer along with the total for each order that the customer has made. 
Save this query as a sql script called Question2.sql to your desktop.
*/

ALTER TABLE OrderDetails
ALTER COLUMN Quantity int;
ALTER COLUMN UnitPrice int


SELECT Customers.CompanyName, Customers.Address, OrderDetails.OrderID, sum(OrderDetails.UnitPrice * OrderDetails.Quantity) AS 'Total Spent'
from Customers
INNER JOIN Orders on Customers.CustomerID=Orders.CustomerID
INNER JOIN OrderDetails on Orders.OrderID = OrderDetails.OrderID GROUP BY OrderDetails.OrderID;



select * from customers;
select * from Orders;
select * from OrderDetails



/*
3.	Create a View that joins the customers table to the orders table and have the view show CompanyName, Address, City and OrderDate. 
Save the View as CustomersView.
*/

CREATE VIEW view_customers as

SELECT Customers.CompanyName, Customers.Address, Customers.City, Orders.OrderDate 

FROM Customers 

INNER JOIN Orders 

on Orders.OrderID=Orders.OrderID;


select * from view_customers;

/*4. Once the CustomersView is created query the view to show only Customers from London */

select * from view_customers Where City='London';


/* 5. Create a stored procedure will return a list of products based on the parameteres values that you pass tp stored procedure. Save the stored procedure
as ProductSearch.  */

CREATE PROCEDURE ProductSearch
AS
BEGIN
SELECT Products.ProductName FROM Products
END

EXEC ProductSearch


/*
6. Create a tabled valued function that takes allows you to pass Country name to the function. This function should join the customers table to the Orders Table and you should also be able
to filter by Order date (ie Show me a list of Customers from Germany who ordered product between 1996 and 1997).
*/

functions not covered in syllabus. asked to skip by instructor.  
/*
Create PROC sp_CountrySearch 
@Country varchar(15)
as
Begin
select 
	   Customers.CompanyName, 
		Customers.City,
		Customers.Country,
		Orders.OrderDate from Customers 
INNER JOIN Orders on Orders.OrderID=Orders.OrderID
WHERE Customers.Country= @Country AND Orders.OrderDate BETWEEN '1996' and '1997'
END


Exec sp_CountrySearch @Country='Germany';
*/

/*
7. Create a nonclustered index on the primary key for the Customers Table and Create a clustered index on the CompanyName field of the Customers table.
*/
/*Part 1 :*/
CREATE NONCLUSTERED INDEX IX_NONC_CID
	on Customers(CustomerID);

/*PART 2: We cannot create clustered index on company name field of customers since it was already created on the CustomerID field which is a Primary Key */


/*
8. Provide a list of suitable fields that you could implement full text searching on.
*/


SELECT * from Customers WHERE Address like '%7';
SELECT * from Products WHERE ProductName like 'C%'; 

/* Database ERD */






