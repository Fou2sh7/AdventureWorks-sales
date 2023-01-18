/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS [First Name]
      --,[MiddleName]
      ,[LastName] AS [Last Name]
	  ,FirstName + ' ' + LastName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
	  ,CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,DimGeography.City AS City
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer]
  LEFT JOIN DimGeography
  ON DimGeography.GeographyKey = DimCustomer.GeographyKey
  ORDER BY CustomerKey