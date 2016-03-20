USE [Nostramo Passager manifest]
GO
SELECT CONCAT(PersonInfo.FirstName, ' ', PersonInfo.LastName) AS Deceased, DeceasedList.TimeOfDeath
FROM PersonInfo 
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
WHERE  TimeOfDeath IS NOT NULL AND TimeOfDeath >= '2080-04-01' AND TimeOfDeath < '2080-04-02'
ORDER BY TimeOfDeath, Deceased;