select * from [dbo].[LITA+Capstone+Dataset2]

------retrieve total customers by region--------
SELECT Region, COUNT(CustomerID) AS TotalCustomers
FROM [dbo].[LITA+Capstone+Dataset2]
GROUP BY Region

------Most popular subscription type--------
SELECT SubscriptionType, COUNT(CustomerID) AS TotalCustomerbysubtype 
FROM [dbo].[LITA+Capstone+Dataset2]
GROUP BY SubscriptionType
ORDER BY TotalCustomerbysubtype DESC

---------customers who canceled within 6 months------ 
select * from [dbo].[LITA+Capstone+Dataset2]
SELECT CustomerName, SubscriptionStart, SubscriptionEnd
FROM [dbo].[LITA+Capstone+Dataset2]
WHERE DATEDIFF(month, SubscriptionStart, SubscriptionEnd) < 6
  AND Canceled = 'TRUE'

  ----------AVERAGE SUBSCRIPTION DURATION---------
  
SELECT AVG(DATEDIFF(month, SubscriptionStart, SubscriptionEnd)) AS AvgDuration
FROM [dbo].[LITA+Capstone+Dataset2]

---------CUSTOMERS WITH SUBSCRIPTION >12 MONTHS-------
select * from [dbo].[LITA+Capstone+Dataset2]
SELECT CustomerID, SubscriptionStart, SubscriptionEnd
FROM [dbo].[LITA+Capstone+Dataset2]
WHERE DATEDIFF(month, SubscriptionStart, SubscriptionEnd) > 12

------------TOTAL REVENUE BY SUBSCRIPTION TYPE----------
SELECT SubscriptionType, SUM(Revenue) AS TotalRevenue
FROM [dbo].[LITA+Capstone+Dataset2]
GROUP BY SubscriptionType

------------TOP3 REGION BY SUBSCRIPTION CANCELLATIONS---------
SELECT TOP 3
Region, COUNT(Canceled) AS Cancellations
FROM [dbo].[LITA+Capstone+Dataset2]
WHERE Canceled = 'TRUE'
GROUP BY Region
ORDER BY Cancellations DESC

-------TOTAL ACTIVE AND CANCELLED CUSTOMER--------
select * from [dbo].[LITA+Capstone+Dataset2]
SELECT 
  COUNT(CASE WHEN Canceled = 'FALSE' THEN 'FALSE' ELSE 'TRUE' END) AS ActiveSubscriptions,
  COUNT(CASE WHEN Canceled = 'TRUE' THEN 'TRUE' ELSE 'FALSE' END) AS CanceledSubscriptions
FROM [dbo].[LITA+Capstone+Dataset2]








