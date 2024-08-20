-- Create tables
CREATE TABLE Artists (
    ArtistID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Genre TEXT
);

CREATE TABLE Performances (
    PerformanceID INTEGER PRIMARY KEY,
    StartTime TIMESTAMP,
    EndTime TIMESTAMP
);

CREATE TABLE Stages (
    StageID INTEGER PRIMARY KEY,
    Name TEXT,
    Capacity INTEGER,
    Location TEXT,
    FestivalID INTEGER,
    FOREIGN KEY (FestivalID) REFERENCES Festival(FestivalID)
);

CREATE TABLE Attendees (
    AttendeeID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Age INTEGER,
    TicketID INTEGER,
    CheckInTime TIMESTAMP,
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID)
);

CREATE TABLE Tickets (
    TicketID INTEGER PRIMARY KEY,
    PerformanceID INTEGER,
    Price REAL,
    SeatNumber TEXT,
    FOREIGN KEY (PerformanceID) REFERENCES Performances(PerformanceID)
);

CREATE TABLE Sponsors (
    SponsorID INTEGER PRIMARY KEY,
    Name TEXT,
    Contribution REAL,
    Details JSON,
    FestivalID INTEGER,
    FOREIGN KEY (FestivalID) REFERENCES Festival(FestivalID)
);

CREATE TABLE Festival (
    FestivalID INTEGER PRIMARY KEY,
    Name TEXT,
    Location TEXT,
    StartDate TIMESTAMP,
    EndDate TIMESTAMP
);

CREATE TABLE Performers (
    PerformanceID INTEGER,
    ArtistID INTEGER,
    PRIMARY KEY (PerformanceID, ArtistID),
    FOREIGN KEY (PerformanceID) REFERENCES Performances(PerformanceID),
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE PerformanceStages (
    PerformanceID INTEGER,
    StageID INTEGER,
    PRIMARY KEY (PerformanceID, StageID),
    FOREIGN KEY (PerformanceID) REFERENCES Performances(PerformanceID),
    FOREIGN KEY (StageID) REFERENCES Stages(StageID)
);

