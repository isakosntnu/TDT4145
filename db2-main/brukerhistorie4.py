import sqlite3


conn = sqlite3.connect('mydatabase.db')
cursor = conn.cursor()


def HentForestillinger(dato):

    cursor.execute("""
    SELECT Teaterstykke.Navn, COUNT(Billett.BillettID) AS AntallBilletterKjøpt
    FROM Teaterstykke
    INNER JOIN Forestilling ON Teaterstykke.StykkeID = Forestilling.StykkeID
    LEFT OUTER JOIN Billett ON Forestilling.StykkeID = Billett.StykkeID AND Forestilling.Dato = Billett.Dato
    WHERE Forestilling.Dato = ?
    GROUP BY Teaterstykke.Navn
    """, (dato,))

    resultat = cursor.fetchall()

    if resultat:
        for navn, antall_billetter in resultat:
            print(f"Forestilling: {navn}\nAntall solgte billetter: {antall_billetter}\n")
    else:
        print("Ingen forestillinger funnet på denne datoen.")

    conn.close()

def updateDate(inputDate):
    if "Dato" in inputDate:
        words = inputDate.split()
        for word in words:
            if len(word) == 10 and word[4] == "-" and word[7] == "-":
                return word
    return inputDate
   
def checkDate(inputDate):
    if inputDate is None:
        print("Ingen dato funnet.")
        return False
    words = inputDate.split()
    for word in words:
        if len(word) == 10 and word[4] == "-" and word[7] == "-":
            return True  
    print("Feil datoformat. Skriv inn en dato på formatet YYYY-MM-DD.")
    return False
               
inputDate = input("Skriv inn en dato (YYYY-MM-DD): ")
inputDate = updateDate(inputDate)

if checkDate(inputDate):
    HentForestillinger(inputDate)
