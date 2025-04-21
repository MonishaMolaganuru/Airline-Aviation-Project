use [Airline Aviation Project];

Select * from [ Airline Data];

--Total Number of Records
SELECT COUNT(*) AS Total_Passengers 
FROM [ Airline Data];

--Flight Status Count
SELECT Flight_Status, COUNT(*) AS Total
FROM [ Airline Data]
GROUP BY Flight_Status;

--Total Number Female Passenger
SELECT COUNT(Gender) AS Total_Female 
FROM [ Airline Data]
where Gender = 'Female';

--Total Number Male Passenger
SELECT COUNT(Gender) AS Total_Male 
FROM [ Airline Data]
where Gender = 'Male';

--Creating Age Group based on Age
SELECT 
    Age,
    CASE
        WHEN Age < 13 THEN 'Child'
        WHEN Age BETWEEN 13 AND 19 THEN 'Teen'
        WHEN Age BETWEEN 20 AND 35 THEN 'Young Adult'
        WHEN Age BETWEEN 36 AND 55 THEN 'Adult'
        WHEN Age > 55 THEN 'Senior'
        ELSE 'Unknown'
    END AS Age_Group
FROM [ Airline Data];

--Updating Age Group into Table
update [ Airline Data]
set Age_Group = 
      CASE
        WHEN Age < 13 THEN 'Child'
        WHEN Age BETWEEN 13 AND 19 THEN 'Teen'
        WHEN Age BETWEEN 20 AND 35 THEN 'Young Adult'
        WHEN Age BETWEEN 36 AND 55 THEN 'Adult'
        WHEN Age > 55 THEN 'Senior'
        ELSE 'Unknown'
    END;

select * from [ Airline Data];

--Total_Passenger by Age Group
select Age_Group, count(age) as Total_Passenger
from [ Airline Data]
group by Age_Group
order by Total_Passenger desc;

--Flights by Continent
SELECT Continents, COUNT(*) AS Total
FROM [ Airline Data]
GROUP BY Continents
ORDER BY Total DESC;

--Countries with Highest Delayed Flight
SELECT Country_Name, COUNT(*) AS Delayed_Flight_Count
FROM [ Airline Data]
WHERE Flight_Status = 'Delayed'
GROUP BY Country_Name
ORDER BY Delayed_Flight_Count DESC;

--Countries of Flight Status by count
SELECT Country_Name, Flight_Status, COUNT(*) AS Flight_Count
FROM [ Airline Data]
WHERE Flight_Status IN ('Delayed', 'On Time', 'Cancelled')
GROUP BY Country_Name, Flight_Status
ORDER BY Country_Name, Flight_Status;

--Number of Flights per Pilot
SELECT Pilot_Name, COUNT(*) AS Total_Flights
FROM [ Airline Data]
GROUP BY Pilot_Name
ORDER BY Total_Flights DESC;

select * from [ Airline Data];

