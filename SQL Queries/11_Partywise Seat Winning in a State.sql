/*
Seats won by each party in a State (say West Bengal)
*/

select pr.party, count(cr.Constituency_ID) as Seats_Won
from
partywise_results as pr
join
constituencywise_results as cr
on pr.Party_ID = cr.Party_ID
join
statewise_results as sr
on sr.[Leading Candidate] = cr.Winning_Candidate
where sr.State = 'West Bengal'
group by pr.Party;