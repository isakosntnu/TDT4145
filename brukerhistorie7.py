import sqlite3
conn = sqlite3.connect('mydatabase.db')
cursor = conn.cursor()

def hent_skuespillere_i_samme_akt_som(navn):

    query = """
    SELECT DISTINCT a2.Navn AS AndreSkuespillere, Akt.Navn AS AktNavn, ts.Navn AS TeaterstykkeNavn
    FROM Ansatt a1
    INNER JOIN ErSkuespiller es1 ON a1.AnsattID = es1.AnsattID
    INNER JOIN RolleIAkt ra1 ON es1.RolleID = ra1.RolleID
    INNER JOIN Akt ON ra1.AktNr = Akt.AktNr AND ra1.StykkeID = Akt.StykkeID
    INNER JOIN Teaterstykke ts ON Akt.StykkeID = ts.StykkeID
    INNER JOIN RolleIAkt ra2 ON Akt.AktNr = ra2.AktNr AND Akt.StykkeID = ra2.StykkeID
    INNER JOIN ErSkuespiller es2 ON ra2.RolleID = es2.RolleID
    INNER JOIN Ansatt a2 ON es2.AnsattID = a2.AnsattID
    WHERE a1.Navn = ? AND a2.Navn != a1.Navn
    ORDER BY ts.Navn, Akt.Navn, a2.Navn
    """

    cursor.execute(query, (navn,))

    results = cursor.fetchall()

    if results:
        print(f"Skuespillere som har spilt med {navn} i samme akt og tilhørende forestilling:")
        for andreSkuespillere, aktNavn, teaterstykkeNavn in results:
            print(f"- {andreSkuespillere} i akt '{aktNavn}', Forestilling: '{teaterstykkeNavn}'")
    else:
        print(f"Ingen resultater funnet for skuespilleren: {navn}")

    conn.close()


inputNavn = input("Skriv inn navnet på en skuespiller: ")
hent_skuespillere_i_samme_akt_som(inputNavn)