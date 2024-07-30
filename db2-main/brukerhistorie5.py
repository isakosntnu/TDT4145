import sqlite3
conn = sqlite3.connect('mydatabase.db')
cursor = conn.cursor()

query = """
SELECT DISTINCT T.Navn, A.Navn, R.Navn
FROM Ansatt AS A 
JOIN ErSkuespiller ON A.AnsattID = ErSkuespiller.AnsattID
JOIN Rolle AS R ON ErSkuespiller.RolleID = R.RolleID
JOIN RolleIAKt ON R.RolleID = RolleIAkt.RolleID
JOIN Akt ON RolleIAkt.StykkeID = Akt.StykkeID
JOIN Teaterstykke AS T ON Akt.StykkeID = T.StykkeID     
"""

cursor.execute(query)

results = cursor.fetchall()

print("Skuespillere og deres roller i teaterstykkene:")
for row in results:
    print("Teaterstykke:", row[0])
    print("Skuespiller:", row[1])
    print("Rolle:", row[2])
    print()

conn.close()