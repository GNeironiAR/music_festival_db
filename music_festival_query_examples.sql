-- Queries examples:


-- Retrieve all performances with their associated artists and stages:

SELECT p.PerformanceID, a.Name AS Artist, s.Name AS Stage
FROM Performances p
INNER JOIN Performers pf ON p.PerformanceID = pf.PerformanceID
INNER JOIN Artists a ON pf.ArtistID = a.ArtistID
INNER JOIN PerformanceStages ps ON p.PerformanceID = ps.PerformanceID
INNER JOIN Stages s ON ps.StageID = s.StageID;


-- List all attendees who checked in after a specified time:
SELECT *
FROM Attendees
WHERE CheckInTime > '2024-07-11 18:00:00';

-- Calculate the total contribution from sponsors for the festival:
SELECT SUM(Contribution) AS TotalContribution
FROM Sponsors;

-- Find out the average ticket price for the performances:
SELECT AVG(Price) AS AverageTicketPrice
FROM Tickets;

-- Retrieve the name and location of the festival along with the start and end dates:
SELECT Name, Location, StartDate, EndDate
FROM Festival;

-- query that uses Common Table Expressions (CTEs) and joins to retrieve information about attendees who purchased tickets for performances at specific stages:
WITH StagePerformancesCount AS (
    SELECT ps.StageID, COUNT(ps.PerformanceID) AS NumPerformances
    FROM PerformanceStages ps
    GROUP BY ps.StageID
),
AttendeePerformanceCounts AS (
    SELECT a.AttendeeID, COUNT(t.PerformanceID) AS NumPerformancesAttended
    FROM Attendees a
    LEFT JOIN Tickets t ON a.TicketID = t.TicketID
    GROUP BY a.AttendeeID
)
SELECT a.Name AS AttendeeName, s.Name AS StageName, spc.NumPerformances AS TotalPerformancesAtStage,
       apc.NumPerformancesAttended AS PerformancesAttended
FROM Attendees a
JOIN Tickets t ON a.TicketID = t.TicketID
JOIN Performances p ON t.PerformanceID = p.PerformanceID
JOIN PerformanceStages ps ON p.PerformanceID = ps.PerformanceID
JOIN Stages s ON ps.StageID = s.StageID
JOIN StagePerformancesCount spc ON s.StageID = spc.StageID
JOIN AttendeePerformanceCounts apc ON a.AttendeeID = apc.AttendeeID
WHERE apc.NumPerformancesAttended > spc.NumPerformances / 2;