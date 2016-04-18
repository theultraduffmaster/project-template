# Irish Constituencies Neo4j Database
###### Declan Duffy, G00318025

## Introduction
This is a database with all the candidates who ran in the 2016 elections in Ireland.

## Database
The database was created using the queries present in the QueriesToBuildDB word file. Once they are present in NEO4J the query is amended to add '' around the values for every label e.g. id, population, description, etc. Single quotes are also removed from the description of the constituency in order to allow the queries to run succesfully. Every n for node also gains a number after it in order to distinguish each node from the other e.g. n for constituency 1: Carlow-Kilkenny and n1 for constituency 2: Cavan-Monaghan, etc. AFter that there is a seperate word file for each party and their candidates along with their info to add to the database. These word files also contain party nodes with background info on those parties. Then there is a Relationships word file which describes how each candidate is connected up to each constituency and to which party they are connected to in the graph database.

## Queries
My three queries all you to search for candidates by info they haven't given, also for a party's history and finally search for the jobs all candidates have

#### Query one title
This query retreives candidates whose age is unknown(This query is more explained in the Query-1.cypher in the scripts folder)
```cypher
MATCH
    (n:Candidate{age: 'Unknown'}) 
RETURN 
    n
```

#### Query two title
This query retreives the histories of a party and places them in a list
```cypher
MATCH 
    (n:Party)
RETURN 
    Collect(n.History)
```

#### Query three title
This query retreives the unique job titles in the database and places them in a list
```cypher
MATCH 
    (n:Candidate)
RETURN 
    Collect(DISTINCT n.Occupation)
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database. 
2. https://www.youtube.com/watch?v=LTdOgvpsR3c. This video was used to create a function in excel to fast track the query making process once all the info was copied from wikipedia.
3. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland. The site that was used for gathering the info necessary for building the database and the queries as well.
4. Background info for AAA-PBP: https://en.wikipedia.org/wiki/Anti-Austerity_Alliance%E2%80%93People_Before_Profit
5. Background info for Sinn Fein: https://en.wikipedia.org/wiki/Sinn_F%C3%A9in
6. Background info for Fine Gael: https://en.wikipedia.org/wiki/Fine_Gael
7. Background info for Fianna Fail: https://en.wikipedia.org/wiki/Fianna_F%C3%A1il
8. Background info for Labour: https://en.wikipedia.org/wiki/Labour_Party_(Ireland)
9. All ideas for the interesting queries came about from conversing with 2 of my classmates (G00310769, G00314495) over our respective databases
10. http://www.thejournal.ie/thejournal-ie-candidate-database-2537709-Feb2016/ The journal.ie was the primary source for information gathered about the candidates.
