import sqlite3
from datetime import datetime
from datetime import date
now = datetime.now()

current_time = now.strftime("%H:%M:%S")

con = sqlite3.connect('mydatabase.db')
cursor = con.cursor()


#Prøvde en stund å få kun en funksjon, men slet litt pga alle de ulike verdiene og at i hovedscenen
#øker setenummeret uavhengig av radnr, mens i gamle-scenen så starter setenr på nytt hver rad.
#derfor er det nå to ulike funksjoner, en for hovedscenen og en for gamle-scenen.
stoppProgram = False

#HOVEDSCENEN
# Initialverdier
standard_kunde_id = 1
standard_stykke_id = 1
teatersal_nr = 1
Hnumber_of_seats = 524 
Hnumber_of_rows = 18
try:
    cursor.execute('''INSERT INTO Kunde (KundeID, Navn, MobilNr, Adresse) VALUES (?, ?, ?, ?)''', (standard_kunde_id, "standardbruker", "98765432", "standard@bruker.no"))
    cursor.execute('''INSERT INTO Billettkjoep (BillettkjoepID, Dato, Tid, KundeID) VALUES (?, ?, ?, ?)''', (1, date.today(), current_time, 1))
except:
    print("Disse billettene er allerede kjøpt")
    stoppProgram = True
    con.rollback()
def process_seat_file_hoved(file_path, cursor):
    seat_num = Hnumber_of_seats  
  
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            standard_dato = file.readline().strip()  

            row_number = Hnumber_of_rows
            for line in file:
                line = line.strip()
                if line in ['Galleri', 'Parkett']:
                    continue  
                else:
                    row_number -= 1  
                    
                    for seat in reversed(line):
                        if seat == '1':  
                            cursor.execute('''
                                INSERT INTO Billett (Sete, PrisID, StykkeID, Dato, BillettkjoepID)
                                VALUES (?, ?, ?, ?, ?)
                            ''', (seat_num, 1, standard_stykke_id, standard_dato, standard_kunde_id))
                        
                        seat_num -= 1  
        print("Billetter lagt til i hovedscenen.")
        con.commit()

    except:
        print("Disse billettene er allerede kjøpt")
        con.rollback()
    finally:
        pass

if not stoppProgram:
    process_seat_file_hoved('files/hovedscenen.txt', cursor)
        
#GAMLE_SCENE
# Initialverdier
standard_kunde_id = 1
teatersal_nr = 2
Hnumber_of_seats = 332      
Hnumber_of_rows = 0

def process_seat_file_gamle(file_path, cursor):
    stykke_id = 2
    teatersal_nr = 2

    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            standard_dato = file.readline().strip()  
            current_area = None
            row_number = 0
            for line in file:
                line = line.strip()
                if line in ['Galleri', 'Balkong', 'Parkett']:  
                    current_area = line
                    if current_area == 'Galleri':
                        row_number = 3
                    elif current_area == 'Balkong':
                        row_number = 4
                    elif current_area == 'Parkett':
                        row_number = 10
                else:
                    seat_num = 0  
                    
                    
                    for seat in line:  
                        seat_num += 1
                        if seat == '1':  
                            cursor.execute('''
                                SELECT SeteID FROM Sete
                                WHERE RadNr = ? AND SeteNr = ? AND OmraadeNavn = ? AND TeatersalNr = ?
                            ''', (row_number, seat_num, current_area, teatersal_nr))
                            sete_id_row = cursor.fetchone()
                            
                            if sete_id_row:
                                sete_id = sete_id_row[0]
                                cursor.execute('''
                                    INSERT INTO Billett (Sete, PrisID, StykkeID, Dato, BillettkjoepID)
                                    VALUES (?, ?, ?, ?, ?)
                                ''', (sete_id, 1, stykke_id, standard_dato, standard_kunde_id))
                    row_number -= 1 
        print("Billetter lagt til i gamle-scenen.")
        con.commit()

    except:
        print("Disse billettene er allerede kjøpt")
        con.rollback()
    finally:pass
if not stoppProgram:
    process_seat_file_gamle('files/gamle-scene.txt', cursor)

con.close()