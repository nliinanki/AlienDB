USE [Nostramo Passager manifest]
GO
SELECT COUNT(*) AS 'Count of ranks', MilitaryRank.RankName
FROM PersonInfo
INNER JOIN MilitaryRank ON PersonInfo.RankID = MilitaryRank.RankID
GROUP BY PersonInfo.RankID, RankName;
