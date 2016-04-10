// This query sorts into a list all the occupations of the TDs in the database and removes any duplictaes so its all the jobs without repetition


MATCH (n:Candidate)
RETURN Collect(DISTINCT n.Occupation)