--Cleaning FactInternetSales Table

Select 
  CustomerKey [Customer's Keys],
  ProductKey [Product Key],
  OrderDate [Order Date Key],
  DueDate [Due Date Key],
  ShipDate [Ship Date Key],
  SalesOrderNumber [Sales Order Number],
  SalesAmount [Sales Amount]

From 
  FactInternetSales

Where
  Left(OrderDateKey,4) >= 2019

Order By
OrderDateKey Asc