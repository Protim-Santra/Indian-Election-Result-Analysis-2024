--4. Updating the column for rest as ‘Other’

update partywise_results
set party_alliance='Other'
where party_alliance is null;
select * from partywise_results;