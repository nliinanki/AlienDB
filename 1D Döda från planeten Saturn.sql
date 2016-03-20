USE [Nostramo Passager manifest]
GO
SELECT PlanetOfOrigin.PlanetName, CONCAT(PersonInfo.FirstName, ' ', PersonInfo.LastName) AS Deceased
FROM PersonInfo 
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
INNER JOIN PlanetOfOrigin ON PersonInfo.PlanetID = PlanetOfOrigin.PlanetID
WHERE  TimeOfDeath IS NOT NULL AND PlanetName = 'Saturn'
ORDER BY TimeOfDeath, Deceased;