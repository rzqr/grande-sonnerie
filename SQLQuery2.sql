/*
--1
select *
from Shippers

--2
select CategoryName, Description
from Categories

--EMPLOYEES TABLE
select*
from Employees

--3
select FirstName, LastName, HireDate
from Employees
where Title = 'Sales Representative'

--4
select FirstName, LastName, HireDate
from Employees
where
Title = 'Sales Representative' and
Country = 'USA'

--ORDERS TABLE
select*
from Orders

--5
select OrderID, OrderDate
from Orders
where EmployeeID = 5

--SUPPLIERS TABLE
select*
from Suppliers

--6
select SupplierID, ContactName, ContactTitle
from Suppliers
where ContactTitle != 'Marketing Manager'

--PRODUCTS TABLE
select*
from Products

--7
select ProductID, ProductName
from Products
where ProductName like '%queso%'

--ORDERS TABLE
select*
from Orders

--8
select OrderID, CustomerID, ShipCountry
from Orders
where
ShipCountry = 'France' or
ShipCountry = 'Belgium'

--9
select OrderID, CustomerID, ShipCountry
from Orders
where ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela')

--EMPLOYEES TABLE
select*
from Employees

--10
select FirstName, LastName, Title, BirthDate
from Employees
order by BirthDate

--11
select 
FirstName,
LastName,
Title,
BirthDateWithoutTime = CONVERT(date, BirthDate)
from Employees
order by BirthDate

--12
select FirstName, LastName, FullName = FirstName + ' ' + LastName
from Employees


--ORDER DETAILS TABLE
select*
from [Order Details]

--13
select OrderID, ProductID, UnitPrice, Quantity, TotalPrice = UnitPrice * Quantity
from [Order Details]
order by OrderID, ProductID

--CUSTOMERS TABLE
select*
from Customers

--14
select TotalCustomers = count(CustomerID)
from Customers

--ORDERS TABLE
select *
from Orders

--15
select FirstOrder = min(OrderDate)
from Orders

--CUSTOMERS TABLE
select*
from Customers

--16
select country
from Customers
group by country

--17
select ContactTitle, TotalContactTitle = count(*)
from Customers
group by ContactTitle
order by TotalContactTitle desc
*/
--18
select ProductID, ProductName, Supplier = CompanyName
from Products
join Suppliers
on Products.SupplierID = Suppliers.SupplierID