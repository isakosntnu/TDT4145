import sqlite3
conn = sqlite3.connect('mydatabase.db')
cursor = conn.cursor()

query = """
SELECT T.Navn, F.Dato, COUNT(B.BillettID) AS AntallSolgtePlasser
FROM Teaterstykke AS T
JOIN Forestilling AS F ON F.StykkeID = T.StykkeID
JOIN Billett AS B ON F.StykkeID = B.StykkeID AND F.Dato = B.Dato
GROUP BY T.Navn, F.Dato
ORDER BY AntallSolgtePlasser DESC
"""

cursor.execute(query)

results = cursor.fetchall()

print("Teaterstykker som har solgt best:")
for row in results:
    print("Teaterstykke:", row[0])
    print("Dato:", row[1])
    print("Antall solgte billetter:", row[2])
    print()
if results == []:
    print("Ingen solgte billetter enda.")

conn.close()