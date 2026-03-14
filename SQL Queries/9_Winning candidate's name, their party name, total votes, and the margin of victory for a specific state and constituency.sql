/*
Winning candidate's name, their party name, total votes 
and the margin of victory for a constituency 
(say NEWDELHI)
*/

select cr.winning_candidate, cr.total_votes, 
cr.margin, cr.Constituency_Name, sr.State, pr.party 
from constituencywise_results as cr
join
partywise_results as pr on cr.Party_ID = pr.Party_ID
join
statewise_results as sr on cr.Winning_Candidate = sr.[Leading Candidate]
where cr.Constituency_Name = 'NEWDELHI';