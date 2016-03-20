USE [Nostramo Passager manifest]
GO
SELECT COUNT(*), RankName
FROM MilitaryRank
GROUP BY RankName
