// My First query is to search the database for Candidates whose age is unknown.
// Why this is mysterious, did they not want to divulge this info because they believed it would affect their campaign?
// Or was it just the Journal.ie didn't ask certain candidates. I doubt this second reason however as it also leads onto a second query here
// Candidates whose Job is unknown. The Journal would not be this lazy about the info they gather. 
// This was also something I Noticed when making the database that there is quite a few candidates who
// don't want to tell everthing there is to know about them. I suspect as politicians they want some privacy in their lives but I believe this
// to be info we, as the voters, deserve to know if we are going to give them our vote.

//Query 1
MATCH(n:Candidate{age: 'Unknown'}) RETURN n  ------> This returned 82 candidates in total.
Follow on query -----> MATCH (n:Candidate{age: 'Unknown', Party:'Independent'}) RETURN n ------> This returned 50 candidates in total.

// Not surprisingly a lot of them are independents but when we compare the results we see there are 32 candidates who belong to major parties
// who did not want their age to be revealed. This is interesting to me because it makes me wonder why these candidates would feel their age
// is something they didn't need to let their voters know but on the flip side they want their voters to instill their confidence in them?

//Query 2
// Out of curiousty I also wanted to see who didn't want their voters to know what their job is.
MATCH (n:Candidate{Occupation: 'Unknown'}) RETURN n ------> This returned 9 candidates in total
Follow on query -----> MATCH (n:Candidate{Occupation: 'Unknown', Party:'Independent'}) RETURN n -----> This returned 9 candidates in total.

// This was a surprise. After so many candidates not revealing their age I thought their job would be very similar but it turns out thats not
// the case. They are much more open about their jobs. So I followed up this query just like the last one.


// This was an even bigger surprise all 9 candidates whose job is unknown belong to independents. So all major party TD's have listed their jobs.
// I decided now to see what it would be like to combine both queries to see who are the most mysterious TD's running.

//Query 3
MATCH (n:Candidate{age: 'Unknown',Occupation: 'Unknown'}) RETURN n ------> This returned 8 candidates in total.
Follow on query ------> MATCH (n:Candidate{age: 'Unknown',Occupation: 'Unknown', Party: 'Independent'}) RETURN n ----> This returned 8 candidates

// So most candidates revealed at least one of these: age/Occupation. But just like the other 2 queries I wanted to see if most of these were independents.

// Unsurprisingly now all 8 candidates who didn't reveal at least one of their ages/Occupations belong to the independent party.
// This makes me believe most independent candidates are relying on blind fate from their voters by not letting them know basic facts about
// their lives.



// The 3 queries in this file all count towards the 1 query and is not to be considered all 3 interesting queries!


