import sqlite3
from datetime import datetime
from datetime import date
now = datetime.now()

current_time = now.strftime("%H:%M:%S")
con = sqlite3.connect('mydatabase.db')
cursor = con.cursor()

def finnUkjopteSeter(stykkeID, dato, antallSeter):
    #Finner først alle mulige rader og områdenavn med flere ledige seter enn ønsket antallSeter.
    cursor.execute('''
        SELECT RadNr, OmraadeNavn, COUNT(SeteID) AS LedigeSeter
        FROM Sete
        WHERE TeatersalNr = (SELECT SalNr FROM Teaterstykke WHERE StykkeID = ?)
        AND SeteID NOT IN (
            SELECT Sete FROM Billett WHERE StykkeID = ? AND Dato = ?
        )
        GROUP BY RadNr, OmraadeNavn
        HAVING COUNT(SeteID) >= ?
    ''', (stykkeID, stykkeID, dato, antallSeter))

    #Deretter må vi finne de faktiske seteID-ene som vi trenger for å kjøpe billettene og returnere et array av de.
    muligeRader = cursor.fetchall()
    for rad in muligeRader:
        radNr, omraadeNavn = rad[0], rad[1]
        cursor.execute('''
            SELECT SeteID FROM Sete
            WHERE RadNr = ? AND OmraadeNavn = ? AND TeatersalNr = (SELECT SalNr FROM Teaterstykke WHERE StykkeID = ?)
            AND SeteID NOT IN (
                SELECT Sete FROM Billett WHERE StykkeID = ? AND Dato = ?
            )
            ORDER BY SeteNr
            LIMIT ?
        ''', (radNr, omraadeNavn, stykkeID, stykkeID, dato, antallSeter))

        ledigeSeter = cursor.fetchall()
        if len(ledigeSeter) == antallSeter:
            outSeter = []
            for sete in ledigeSeter:
                outSeter.append(sete[0])
            return outSeter


    return None

def kjoep(stykke, forestilingsDato, antallSeter):
    #Finnr stykkeID
    cursor.execute("SELECT StykkeID FROM Teaterstykke WHERE Navn = ?", (stykke,))
    result = cursor.fetchone()
    stykkeID = result[0]

    #Finner prisID-en
    cursor.execute("SELECT PrisID FROM Pris WHERE Type = 'Ordinær'")
    result = cursor.fetchone()
    prisID = result[0]
    
    #Finner den faktiske prisen i kroner
    cursor.execute("SELECT PrisNok FROM PrisTilStykke WHERE StykkeID = ? AND PrisID = ?", (stykkeID, prisID))
    result = cursor.fetchone()
    pris_nok = result[0]

    #Finner ledige setene.
    ledigeSeter = finnUkjopteSeter(stykkeID, forestilingsDato, antallSeter)
    cursor.execute("SELECT BillettkjoepID FROM Billettkjoep ORDER BY BillettkjoepID DESC")
    result = cursor.fetchone()
    billetkjoepID = 0
    if (result == None):
        billetkjoepID = 1
    else:
        billetkjoepID = result[0] + 1

    if ledigeSeter:
        #oppretter et billetkjoep
        cursor.execute('''INSERT INTO Billettkjoep (BillettkjoepID, Dato, Tid, KundeID) VALUES (?, ?, ?, ?)''', (billetkjoepID, date.today(), current_time, 1))
        #oppretter Billett for hvert sete med tilhørende billetkjoepID
        for seteID in ledigeSeter:
            cursor.execute("""
                INSERT INTO Billett (Sete, PrisID, StykkeID, Dato, BillettkjoepID)
                VALUES (?, ?, ?, ?, ?)
            """, (seteID, prisID, stykkeID, forestilingsDato, billetkjoepID))
        con.commit()
        totalpris = pris_nok * antallSeter
        print(f"Kjøpt {antallSeter} billetter til '{stykke}' den {forestilingsDato}. Totalpris: {totalpris} NOK.")
    else:
        print(f"Fant ikke {antallSeter} ledige seter på samme rad.")

kjoep('Størst av alt er kjærligheten', '2024-02-03', 9)

con.close()
