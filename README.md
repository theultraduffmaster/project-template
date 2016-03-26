# Irish Constituencies Neo4j Database
###### Declan Duffy, G00318025

## Introduction
Give a summary here of what your project is about.

## Database
The database was created using the queries present in the QueriesToBuildDB word file. Once they are present in NEO4J the query is amended to add '' around the values for every label e.g. id, population, description, etc. Single quotes are also removed from the description of the constituency in order to allow the queries to run succesfully. Every n for node also gains a number after it in order to distinguish each node from the other e.g. n for constituency 1: Carlow-Kilkenny and n1 for constituency 2: Cavan-Monaghan, etc.

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database. 
2. https://www.youtube.com/watch?v=LTdOgvpsR3c. This video was used to create a function in excel to fast track the query making process once all the info was copied from wikipedia.
3. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland. The site that was used for gathering the info necessary for building the database and the queries as well.