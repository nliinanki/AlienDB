USE [Nostramo Passager manifest]
GO
SELECT CONCAT(PersonInfo.FirstName, ' ', PersonInfo.LastName) AS Deceased, GenderType.GenderName AS Gender, 
MilitaryRank.RankName AS Rank, PlanetOfOrigin.PlanetName AS Planet
FROM PersonInfo 
INNER JOIN GenderType ON PersonInfo.GenderID = GenderType.GenderID 
INNER JOIN MilitaryRank ON PersonInfo.RankID = MilitaryRank.RankID
INNER JOIN PlanetOfOrigin ON PersonInfo.PlanetID = PlanetOfOrigin.PlanetID
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
WHERE  TimeOfDeath IS NOT NULL;