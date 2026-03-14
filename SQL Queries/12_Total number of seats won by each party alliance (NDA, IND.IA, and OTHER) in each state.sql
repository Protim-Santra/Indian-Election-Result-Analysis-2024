/*
Total number of seats won by each party alliance 
(NDA, I.N.D.I.A, and OTHER) in each state
*/

select sr.state as State_Name,
sum(case when pr.party_alliance = 'NDA' then 1 else 0 end) as Won_by_NDA,
sum(case when pr.party_alliance = 'INDIA' then 1 else 0 end) as Won_by_INDIA,
sum(case when pr.party_alliance = 'Other' then 1 else 0 end) as Won_by_Other
from constituencywise_results as cr
join
partywise_results as pr on cr.Party_ID = pr.Party_ID
join
statewise_results as sr on sr.[Parliament Constituency] = cr.Parliament_Constituency
group by sr.State;

