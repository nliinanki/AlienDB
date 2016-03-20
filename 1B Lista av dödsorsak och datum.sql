USE [Nostramo Passager manifest]
GO
SELECT CONCAT(PersonInfo.FirstName, ' ', PersonInfo.LastName) AS Deceased, DeceasedList.TimeOfDeath, 
DeceasedList.StatusType, DeceasedList.StatusDescripton
FROM PersonInfo 
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
WHERE  TimeOfDeath IS NOT NULL
ORDER BY TimeOfDeath, Deceased;