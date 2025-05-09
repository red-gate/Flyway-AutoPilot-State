SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [Logistics].[FlightMaintenanceStatus]
AS
SELECT f.FlightID, f.Airline, f.DepartureCity, f.ArrivalCity, COUNT(m.LogID) AS MaintenanceCount, SUM(CASE WHEN m.MaintenanceStatus='Completed' THEN 1 ELSE 0 END) AS CompletedMaintenance
FROM Logistics.Flight f
     LEFT JOIN Logistics.MaintenanceLog m ON f.FlightID=m.FlightID
GROUP BY f.FlightID, f.Airline, f.DepartureCity, f.ArrivalCity;
GO
