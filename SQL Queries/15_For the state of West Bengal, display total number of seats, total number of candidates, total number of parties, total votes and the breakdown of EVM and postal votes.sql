/*
Display total number of seats, total number of candidates, 
total number of parties, total votes (including EVM and postal) 
and the breakdown of EVM and postal votes for a state (say West Bengal)
*/

select count(distinct sr.[Parliament Constituency]) as No_of_Constituencies,
count(distinct cd.Candidate) as No_of_Candidates, 
COUNT(distinct cd.Party) as No_of_Parties, 
sum(cd.Total_Votes) as Total_Votes, sum(cd.EVM_Votes) as EVM_Votes, 
sum(cd.Postal_Votes) as Postal_Votes
from constituencywise_details as cd
join
constituencywise_results as cr on cd.Constituency_ID = cr.Constituency_ID
join
statewise_results as sr on cr.Parliament_Constituency = sr.[Parliament Constituency]
where sr.State = 'West Bengal';