create database LITA_DB
select * from [dbo].[LITA+Capstone+Dataset1]

  -----Retrieve total sales for each product category------------
  select sum(Total_sales) as Sum_Total_Sales from [dbo].[LITA+Capstone+Dataset1]
  select sum(Total_sales) as Total_Shirt_Sales from [dbo].[LITA+Capstone+Dataset1]
  where Product= 'Shirt'
    select sum(Total_sales) as Total_Shoes_Sales from [dbo].[LITA+Capstone+Dataset1]
  where Product= 'Shoes'
    select sum(Total_sales) as Total_Hat_Sales from [dbo].[LITA+Capstone+Dataset1]
  where Product= 'Hat'
    select sum(Total_sales) as Total_Gloves_Sales from [dbo].[LITA+Capstone+Dataset1]
  where Product= 'Gloves'
    select sum(Total_sales) as Total_Jacket_Sales from [dbo].[LITA+Capstone+Dataset1]
  where Product= 'Jacket'
    select sum(Total_sales) as Total_Socks_Sales from [dbo].[LITA+Capstone+Dataset1]
  where Product= 'Socks'

  ------Number of sales transactions in each region-------
  select * from [dbo].[LITA+Capstone+Dataset1]
  select count(Region) as total_regional_sales_transactions from [dbo].[LITA+Capstone+Dataset1]
  select count(Total_sales) as north_transactions from [dbo].[LITA+Capstone+Dataset1]
  where Region= 'North'
   select count(Total_sales)as south_transactions from [dbo].[LITA+Capstone+Dataset1]
  where Region= 'South'
 select count(Total_sales)as east_transactions from [dbo].[LITA+Capstone+Dataset1]
  where Region= 'East'
 select count(Total_sales) as west_transactions from [dbo].[LITA+Capstone+Dataset1]
  where Region= 'West'

  ------highest selling product by total sales---------
 select top 1(PRODUCT) from [dbo].[LITA+Capstone+Dataset1] 
where Total_Sales> '100'

------revenue--------
select Product, sum(UnitPrice) as Total_Revenue from [dbo].[LITA+Capstone+Dataset1] where 'OrderDate' between '2023-01-01' and '2024-12-31'
group by Product

-------- Monthly sales total--------

 select DATEPART(month,OrderDate) as Month,
SUM(Total_Sales) as Total_Monthly_Sales from [dbo].[LITA+Capstone+Dataset1]
where YEAR(OrderDate) =YEAR(getdate())
group by DATEPART(MONTH,OrderDate)
Order by MONTH


select YEAR(OrderDate), MONTH(OrderDate), SUM(Total_Sales) from [dbo].[LITA+Capstone+Dataset1]
Group by year(OrderDate), MONTH(OrderDate) 
order by YEAR(OrderDate), MONTH(OrderDate) 


------------Top 5 Customers by purchase amount----------

select top 5 (Customer_Id)from [dbo].[LITA+Capstone+Dataset1]
order by Total_Sales

