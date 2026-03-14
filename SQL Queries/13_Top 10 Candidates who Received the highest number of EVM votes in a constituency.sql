/*
Top 10 candidates to receive the highest number of 
EVM votes in each constituency 
*/

select top 10 cd.candidate, cr.parliament_constituency, 
cd.EVM_Votes from 
constituencywise_details as cd
join
constituencywise_results as cr
on cd.Constituency_ID = cr.Constituency_ID
order by cd.EVM_Votes desc;

