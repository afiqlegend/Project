--Cleaning DimProduct Table

Select 
  dp.ProductKey [Product Key],
  dp.ProductAlternateKey [Product Item Code],
  dp.EnglishProductName [Product Name],
  dpc.EnglishProductCategoryName [Product Category],
  dps.EnglishProductSubcategoryName [Sub Category],
  dp.Color [Product Color],
  dp.Size [Product Size],
  dp.ProductLine [Product Line],
  dp.ModelName [Product Model Name],
  dp.EnglishDescription [Product Description],
  Isnull (dp.Status, 'Outdated') [Product Status]

From
  DimProduct dp
  Left Join DimProductSubcategory dps
  On dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
  Left Join DimProductCategory dpc
  On dps.ProductCategoryKey = dpc.ProductCategoryKey

Order By
  dp.ProductKey Asc