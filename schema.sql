CREATE TABLE Teater 
(
    TeaterID INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    Direktor INT,
    FOREIGN KEY (Direktor) REFERENCES Ansatt(AnsattID) ON DELETE RESTRICT
);


CREATE TABLE Teatersal 
(
    SalNr INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL UNIQUE,
    AntallPlasser INT,
    TeaterID INT NOT NULL,
    FOREIGN KEY (TeaterID) REFERENCES Teater(TeaterID) ON DELETE CASCADE
);


CREATE TABLE Teaterstykke 
(
    StykkeID INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    Sesong VARCHAR(255),
    SalNr INT NOT NULL,
    FOREIGN KEY (SalNr) REFERENCES Teatersal(SalNr) ON DELETE RESTRICT
);


CREATE TABLE Forestilling 
(
    Dato DATE NOT NULL,
    StykkeID INT NOT NULL,
    Tidspunkt TIME NOT NULL,
    PRIMARY KEY (Dato, StykkeID),
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE
);


CREATE TABLE Sete 
(
    SeteID INTEGER PRIMARY KEY,
    SeteNr INT NOT NULL,
    RadNr INT NOT NULL,
    OmraadeNavn VARCHAR(255),
    TeatersalNr INT NOT NULL,
    FOREIGN KEY (TeatersalNr) REFERENCES Teatersal(SalNr) ON DELETE CASCADE
);


CREATE TABLE Billett 
(
    BillettID INTEGER PRIMARY KEY,
    Sete INT NOT NULL,
    PrisID INT NOT NULL,
    StykkeID INT NOT NULL,
    Dato DATE NOT NULL,
    BillettkjoepID INTEGER NOT NULL,
    FOREIGN KEY (Sete) REFERENCES Sete(SeteID) ON DELETE RESTRICT,
    FOREIGN KEY (BillettkjoepID) REFERENCES Billettkjoep(BillettkjoepID) ON DELETE CASCADE,
    FOREIGN KEY (PrisID) REFERENCES Pris(PrisID) ON DELETE RESTRICT,
    FOREIGN KEY (StykkeID, Dato) REFERENCES Forestilling(StykkeID, Dato) ON DELETE CASCADE
);


CREATE TABLE Pris 
(
    PrisID INT PRIMARY KEY,
    Type VARCHAR(255) NOT NULL
);

CREATE TABLE PrisTilStykke(
    StykkeID INT,
    PrisID INT,
    PrisNok INT NOT NULL,
    PRIMARY KEY (StykkeID, PrisID),
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE,
    FOREIGN KEY (PrisID) REFERENCES Pris(PrisID) ON DELETE CASCADE
);



CREATE TABLE Billettkjoep 
(
    BillettkjoepID INTEGER PRIMARY KEY,
    Dato DATE NOT NULL,
    Tid TIME NOT NULL,
    KundeID INT NOT NULL,
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID) ON DELETE CASCADE
);



CREATE TABLE Kunde 
(
    KundeID INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    MobilNr VARCHAR(255) NOT NULL UNIQUE,
    Adresse VARCHAR(255) NOT NULL
);


CREATE TABLE Ansatt 
(
    AnsattID INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    Epost VARCHAR(255) NOT NULL UNIQUE,
    Ansattstatus VARCHAR(255) NOT NULL,
    Medvirkende BOOLEAN,
    Skuespiller BOOLEAN,
    Direktoer BOOLEAN
);


CREATE TABLE Arbeidsoppgaver 
(
    OppgaveID INT PRIMARY KEY,
    Oppgave VARCHAR(255) NOT NULL
);


CREATE TABLE OppgaveTilStykke 
(
    StykkeID INT,
    OppgaveID INT,
    PRIMARY KEY (StykkeID, OppgaveID) ,
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE,
    FOREIGN KEY (OppgaveID) REFERENCES Arbeidsoppgaver(OppgaveID) ON DELETE CASCADE
);


CREATE TABLE AnsattArbeidsoppgaver 
(
    AnsattID INT,
    OppgaveID INT,
    PRIMARY KEY (AnsattID, OppgaveID),
    FOREIGN KEY (AnsattID) REFERENCES Ansatt(AnsattID) ON DELETE CASCADE,
    FOREIGN KEY (OppgaveID) REFERENCES Arbeidsoppgaver(OppgaveID) ON DELETE CASCADE
);


CREATE TABLE Rolle 
(
    RolleID INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL
);


CREATE TABLE ErSkuespiller 
(
    RolleID INT,
    AnsattID INT,
    PRIMARY KEY (RolleID, AnsattID),
    FOREIGN KEY (RolleID) REFERENCES Rolle(RolleID) ON DELETE RESTRICT,
    FOREIGN KEY (AnsattID) REFERENCES Ansatt(AnsattID) ON DELETE CASCADE
);


CREATE TABLE Akt 
(
    AktNr INT,
    StykkeID INT,
    Navn VARCHAR(255) NOT NULL,
    PRIMARY KEY (AktNr, StykkeID),
    FOREIGN KEY (StykkeID) REFERENCES Teaterstykke(StykkeID) ON DELETE CASCADE
);


CREATE TABLE RolleIAkt 
(
    AktNr INT,
    StykkeID INT,
    RolleID INT,
    PRIMARY KEY (AktNr, StykkeID, RolleID),
    FOREIGN KEY (AktNr, StykkeID) REFERENCES Akt(AktNr, StykkeID) ON DELETE CASCADE,
    FOREIGN KEY (RolleID) REFERENCES Rolle(RolleID) ON DELETE RESTRICT
);