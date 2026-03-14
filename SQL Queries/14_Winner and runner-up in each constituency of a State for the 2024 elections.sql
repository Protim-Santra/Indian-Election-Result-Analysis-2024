/*
Winner and the runner-up in each constituency 
of a State (say West Bengal) for the 2024 elections
*/

--Creating a View which will contain 
--the positions of the candidates in each constituency 
create view winner_and_runner as
select cd.candidate, cd.Total_Votes, 
cr.Parliament_Constituency, sr.State,
DENSE_RANK() over(partition by cd.Constituency_ID order by cd.Total_Votes desc) as Position
from constituencywise_details as cd
join
constituencywise_results as cr on cd.Constituency_ID = cr.Constituency_ID
join
statewise_results as sr on cr.Parliament_Constituency = sr.[Parliament Constituency];

--Now picking the Constituency Names and respective 1st and 2nd position holders
select State, Parliament_Constituency,
max(case when Position=1 Then candidate END) as Winner,
max(case when Position=2 Then candidate END) as Runner_up
from winner_and_runner where State='West Bengal'
group by State,Parliament_Constituency;

--drop view winner_and_runner;