USE [Nostramo Passager manifest]
GO
SELECT DeceasedList.StatusType, CONCAT(PersonInfo.FirstName, ' ', PersonInfo.LastName) AS Name
FROM PersonInfo 
INNER JOIN DeceasedList ON PersonInfo.DeathID = DeceasedList.DeathID
WHERE  TimeOfDeath IS NOT NULL
GROUP BY StatusType, LastName, FirstName;