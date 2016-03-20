USE [Nostramo Passager manifest]
GO
SELECT CONCAT(PersonInfo.FirstName, ' ', PersonInfo.LastName) AS Deceased, MilitaryRank.RankName, MilitaryRank.Paygrade
FROM PersonInfo 
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
INNER JOIN MilitaryRank ON PersonInfo.RankID = MilitaryRank.RankID
WHERE  TimeOfDeath IS NOT NULL AND RankName = 'Captain'
ORDER BY TimeOfDeath, Deceased;