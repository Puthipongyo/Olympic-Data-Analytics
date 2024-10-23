-- count the number of athletes from each country:
select 
    Country, 
    count(*) as Totalathletes
from athletes
group by Country
order by Totalathletes desc;

-- Calculate the total medals won by each country:
select 
    TOP 5
    TeamCountry,
    sum(Gold) as Total_Gold,
    sum(Silver) as Total_Silver,
    sum(Bronze) as Total_Bronze
from medals
group by TeamCountry
order by Total_Gold desc;

-- Calculate the average number of entries by gender for each discripline:
select
    Discipline,
    avg(Female) as Avg_Female,
    avg(Male) as Avg_Male
from entriesgender
group by Discipline;




