import sqlite3
from datetime import date

con = sqlite3.connect('mydatabase.db')

cursor = con.cursor()


def execute_sql_file(file_path, cursor):
    with open(file_path, 'r', encoding='utf-8') as file:
        sql_script = file.read()
    cursor.executescript(sql_script)
    print(f"Kjører SQL skriptet fra {file_path}")

schemaPath = 'schema.sql' 
insertdbPath = 'insert-db.sql'  
execute_sql_file(schemaPath, cursor)
execute_sql_file(insertdbPath, cursor)


Hnumber_of_seats = 524
Hnumber_of_rows = 18
Hnumber_of_seats_ids = 516
def insert_seats_from_hovedscenen(file_path, cursor):
    sete_id = Hnumber_of_seats_ids 
    current_area = None
    row_number = 0
    seat_num = Hnumber_of_seats
    first_line = True  
    with open(file_path, 'r', encoding='utf-8') as file:
        for line in file:
            if first_line: 
                first_line = False
                continue

            line = line.strip()
            if line in ['Galleri', 'Parkett']: 
                current_area = line
                row_number = Hnumber_of_rows
            else: 
                reversed_line = reversed(line)  
                for seat in reversed_line:
                    if seat in ['1', '0']:  
                        cursor.execute('''
                            INSERT INTO Sete (SeteID, SeteNr, RadNr, OmraadeNavn, TeatersalNr)
                            VALUES (?, ?, ?, ?, ?)
                        ''', (sete_id, seat_num, row_number, current_area, 1))
                        sete_id -= 1
                        seat_num -= 1
                    
                    elif seat == 'x':
                        seat_num -= 1
                row_number -= 1





def insert_seats_from_gamlescenen(file_path, cursor):
    current_area = None
    row_number = 0
    seat_num = 0
    first_line = True
    with open(file_path, 'r', encoding='utf-8') as file:
        for line in file:
            seat_num = 0
            if first_line:  
                first_line = False
                continue
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
                for seat in reversed(line):
                    if seat == '1' or seat == '0': 

                        seat_num += 1
                        cursor.execute('''
                            INSERT INTO Sete (SeteNr, RadNr, OmraadeNavn, TeatersalNr)
                            VALUES (?, ?, ?, ?)
                        ''', (seat_num, row_number, current_area, 2))
                row_number -= 1
                  



insert_seats_from_hovedscenen('files/hovedscenen.txt', cursor)
insert_seats_from_gamlescenen('files/gamle-scene.txt', cursor)



con.commit()
con.close()