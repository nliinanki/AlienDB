USE [Nostramo Passager manifest]
GO
SELECT MAX(Paygrade) AS MaxPaygrade
FROM MilitaryRank 
RIGHT JOIN PersonInfo ON MilitaryRank.RankID = PersonInfo.RankID
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
WHERE  TimeOfDeath IS NOT NULL