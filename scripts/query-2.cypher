// This query will place into a list the history of all the parties so for anyone who, like me, is interested in the historical aspects of each    // party, they can find out info like when they were started, who started them or anything else that they may want to know can be found through   // this query.


MATCH (n:Party)
RETURN Collect(n.History)