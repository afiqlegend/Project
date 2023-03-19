--Cleaning DimDate Table

Select
DateKey [Date Key],
FullDateAlternateKey [Date],
EnglishDayNameOfWeek [Day],
EnglishMonthName [Month],
Left(EnglishMonthName,3) [MonthShort],
MonthNumberOfYear [Month Number],
CalendarQuarter [Quarter],
CalendarYear [Year]

From DimDate

Where
CalendarYear >= 2019