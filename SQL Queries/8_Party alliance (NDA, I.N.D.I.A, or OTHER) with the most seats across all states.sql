/*
Which party alliance (NDA, INDIA, or OTHER) 
won the most seats across all states?
*/

select party_alliance, sum(won) as Seats_Won
from partywise_results
group by party_alliance;