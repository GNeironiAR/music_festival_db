-- Insertar registros en Artists (Artistas)
INSERT INTO Artists (Name, Genre) VALUES
    ('John Doe Band', 'Rock'),
    ('The Groove Masters', 'Jazz'),
    ('Electro Beats', 'Electronic'),
    ('Soulful Sisters', 'Soul'),
    ('The Country Crew', 'Country');

-- Insertar registros en Performances (Actuaciones)
INSERT INTO Performances (StartTime, EndTime) VALUES
    ('2024-07-10 18:00:00', '2024-07-10 20:00:00'),
    ('2024-07-10 20:30:00', '2024-07-10 22:30:00'),
    ('2024-07-11 19:00:00', '2024-07-11 21:00:00'),
    ('2024-07-12 20:00:00', '2024-07-12 22:00:00'),
    ('2024-07-13 21:00:00', '2024-07-13 23:00:00');

-- Insertar registros en Stages (Escenarios)
INSERT INTO Stages (Name, Capacity, Location, FestivalID) VALUES
    ('Main Stage', 5000, 'Central Park', 1),
    ('Jazz Lounge', 300, 'Downtown', 1),
    ('EDM Arena', 2000, 'City Center', 1),
    ('Soulful Corner', 500, 'Waterfront', 1),
    ('Country Barn', 1000, 'Outskirts', 1);

-- Insertar registros en Attendees (Asistentes)
INSERT INTO Attendees (Name, Age, TicketID, CheckInTime) VALUES
    ('Alice Smith', 28, 1, '2024-07-10 17:30:00'),
    ('Bob Johnson', 35, 2, '2024-07-10 20:00:00'),
    ('Charlie Brown', 22, 3, '2024-07-11 18:30:00'),
    ('Diana Ross', 45, 4, '2024-07-12 19:45:00'),
    ('Eva Green', 30, 5, '2024-07-13 20:30:00');

-- Insertar registros en Tickets (Boletos)
INSERT INTO Tickets (PerformanceID, Price, SeatNumber) VALUES
    (1, 50.00, 'A101'),
    (2, 40.00, 'B203'),
    (3, 35.00, 'C305'),
    (4, 55.00, 'D102'),
    (5, 45.00, 'E204');

-- Insertar registros en Sponsors (Patrocinadores)
INSERT INTO Sponsors (Name, Contribution, Details, FestivalID) VALUES
    ('BigCorp', 10000.00, '{"Level": "Platinum"}', 1),
    ('MegaCorp', 7500.00, '{"Level": "Gold"}', 1),
    ('SuperCorp', 5000.00, '{"Level": "Silver"}', 1),
    ('AwesomeCorp', 2500.00, '{"Level": "Bronze"}', 1),
    ('TechCorp', 1000.00, '{"Level": "Supporter"}', 1);

-- Insertar registros en Festival
INSERT INTO Festival (Name, Location, StartDate, EndDate) VALUES
    ('Summer Music Festival', 'Citywide', '2024-07-10', '2024-07-13');
    
   
-- Insertar registros en PerformanceStages (Actuaciones en Escenarios)
INSERT INTO PerformanceStages (PerformanceID, StageID) VALUES
    (1, 1),  -- Actuación 1 (John Doe Band) en Main Stage
    (2, 2),  -- Actuación 2 (The Groove Masters) en Jazz Lounge
    (3, 3),  -- Actuación 3 (Electro Beats) en EDM Arena
    (4, 4),  -- Actuación 4 (Soulful Sisters) en Soulful Corner
    (5, 5);  -- Actuación 5 (The Country Crew) en Country Barn

-- Insertar registros en Performers (Intérpretes)
INSERT INTO Performers (PerformanceID, ArtistID) VALUES
    (1, 1),  -- John Doe Band en Actuación 1
    (2, 2),  -- The Groove Masters en Actuación 2
    (3, 3),  -- Electro Beats en Actuación 3
    (4, 4),  -- Soulful Sisters en Actuación 4
    (5, 5);  -- The Country Crew en Actuación 5