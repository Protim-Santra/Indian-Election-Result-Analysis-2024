--Total number of seats available for elections in each state
select state as State_Names, COUNT(state) as No_of_Seats 
from statewise_results
group by state;

--Alternative Method
select s.state as State_Name, 
count(sr.[State ID]) as No_of_Seats 
from
statewise_results sr
join
states s on s.State_ID=sr.[State ID]
group by s.State;