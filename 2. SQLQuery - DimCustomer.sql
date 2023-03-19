--Cleaning DimCustomer Table

Select 
  dc.CustomerKey [Customer's Keys],
  dc.FirstName [First Name],
  dc.LastName [Last Name],
  dc.FirstName + ' ' + dc.LastName [Full Name],
  Case dc.gender
  When 'M' Then 'Male'
  When 'F' Then 'Female'
  End As Gender,
  dc.DateFirstPurchase [Date First Purchase],
  --Join the Customer's City from Geography Table
  dg.City [Customer's City]


From
  DimCustomer dc
  --Left Join The DimCustomer with DimGeography
  Left Join DimGeography dg 
  On dc.GeographyKey = dg.GeographyKey

--Order List By Customerkey
Order By 
  dc.CustomerKey Asc
