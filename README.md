# Prosjekt DB2

Følgende tekst er lik som pdf filen som ligger vedlagt.

## Gruppemedlemmer

Isak Olav Sjøberg

Camilla Huynh

Sindy Shan

## Oppskrift

Alle brukerhistorier kjøres fra main.py filen. For å starte programmet må man trykke på run. Da vil brukerhistorie 1 automatisk kjøres, og den tomme databasefilen vil fylles med data. Deretter kan brukeren av programmet enkelt velge mellom de 6 andre brukerhistoriene, dette kommer tydelig fram ved brukergrensesnittet til programmet. Man taster inn tallet til ønsket brukerhistorie. Vil man teste brukerhistorie 5 for eksempel taster man bare inn tallet 5 i terminalen. Hvis brukeren bruker windows og python (ikke python3) vil brukeren måtte gå inn i main.py og manuelt endre alle instanser av ‘python3’ til ‘python’. Det er viktig å kjøre brukerhistorie 2 før 3 for å få satt inn de allerede kjøpte setene. Alle skuespillere fra Troendelag teater er med i databasen vår, så på brukerhistorie 7 må man skrive inn et av disse navnene. Man kan også eventuelt se i databasen vår og sjekke hvilke navn som står der. Hvis brukeren får noen feilmeldinger, prøv å slett mydatabase.db og kjør main.py på nytt. Når brukeren har testet alt kan man skrive stopp inn i terminalen og programmet avsluttes. Ønsker man å kjøre programmet på nytt må man slette mydatabase.db før man starter opp programmet igjen.

## Output fra brukerhistoriene

### Oppstart av program/brukerhistorie 1:

```
Kjører SQL skriptet fra schema.sql

Kjører SQL skriptet fra insert-db.sql
```

### Brukerhistorie 2:

```
Billetter lagt til i hovedscenen.

Billetter lagt til i gamle-scenen.
```

### Brukerhistorie 3:

```
Kjøpt 9 billetter til 'Størst av alt er kjærligheten' den 2024-02-03. Totalpris: 3150 NOK.
```

### Brukerhistorie 4:

Input:

```
«Dato 2024-02-03»
```

Output:

```
Forestilling: Kongsemnene
Antall solgte billetter: 65
Forestilling: Størst av alt er kjærligheten
Antall solgte billetter: 36
```

### Brukerhistorie 5:

Skuespillere og deres roller i teaterstykkene:

```
Teaterstykke: Kongsemnene
Skuespiller: Arturo Scott
Rolle: Haakon Haakonsen

Teaterstykke: Kongsemnene
Skuespiller: Emil Olafsson
Rolle: Dagfinn Bonde

Teaterstykke: Kongsemnene
Skuespiller: Emil Olafsson
Rolle: Jatgeir Skald

Teaterstykke: Kongsemnene
Skuespiller: Emma Deichman
Rolle: Sigrid

Teaterstykke: Kongsemnene
Skuespiller: Emma Deichman
Rolle: Ingeborg

Teaterstykke: Kongsemnene
Skuespiller: Emma Deichman
Rolle: Guttorm Ingesson

Teaterstykke: Kongsemnene
Skuespiller: Hans Petter Nilsen
Rolle: Skule Jarl

Teaterstykke: Kongsemnene
Skuespiller: Ingunn Øyen
Rolle: Inga fraa Vartejg

Teaterstykke: Kongsemnene
Skuespiller: Isak Holmen Sørensen
Rolle: Paal Flida

Teaterstykke: Kongsemnene
Skuespiller: Madeleine Nilsen
Rolle: Ragnhild

Teaterstykke: Kongsemnene
Skuespiller: Per Bogstad Gulliksen
Rolle: Gregorius Jonsson

Teaterstykke: Kongsemnene
Skuespiller: Synnøve Eriksen
Rolle: Margrete

Teaterstykke: Kongsemnene
Skuespiller: Thomas Jensen Takyi
Rolle: Biskop Nikolas

Teaterstykke: Kongsemnene
Skuespiller: Snorre Tøndel
Rolle: Peter

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Sunniva Du Mond Nordal
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Jo Saberniak
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Marte M. Steinholt
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Tor Ivar Hagen
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Jonas Corell
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: David Gehrt
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Gaute Tønder
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Magnus Mikkelsen
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Kristoffer Spender
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Åsmund Flaten
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Trond-Ove Skrødal
Rolle: Seg selv

Teaterstykke: Størst av alt er kjærligheten Skuespiller: Natalie Grøndal
Rolle: Seg selv
```

### Brukerhistorie 6:

```
Teaterstykker som har solgt best: Teaterstykke: Kongsemnene Dato: 2024-02-03
Antall solgte billetter: 65

Teaterstykke: Størst av alt er kjærligheten Dato: 2024-02-03
Antall solgte billetter: 36
```

### Brukerhistorie 7:

Input:

```
«Madeleine Nilsen»
```

Output:

```
Skuespillere som har spilt med Madeleine Nilsen i samme akt og tilhørende forestilling:
- Arturo Scott i akt 'Akt 1', Forestilling: 'Kongsemnene'
- Emil Olafsson i akt 'Akt 1', Forestilling: 'Kongsemnene'
- Emma Deichman i akt 'Akt 1', Forestilling: 'Kongsemnene'
- Hans Petter Nilsen i akt 'Akt 1', Forestilling: 'Kongsemnene'
- Ingunn Øyen i akt 'Akt 1', Forestilling: 'Kongsemnene'
- Isak Holmen Sørensen i akt 'Akt 1', Forestilling: 'Kongsemnene' 
- Per Bogstad Gulliksen i akt 'Akt 1', Forestilling: 'Kongsemnene' 
- Synnøve Eriksen i akt 'Akt 1', Forestilling: 'Kongsemnene'
- Thomas Jensen Takyi i akt 'Akt 1', Forestilling: 'Kongsemnene' 
- Arturo Scott i akt 'Akt 5', Forestilling: 'Kongsemnene'
- Emil Olafsson i akt 'Akt 5', Forestilling: 'Kongsemnene'
- Emma Deichman i akt 'Akt 5', Forestilling: 'Kongsemnene'
- Hans Petter Nilsen i akt 'Akt 5', Forestilling: 'Kongsemnene'
- Isak Holmen Sørensen i akt 'Akt 5', Forestilling: 'Kongsemnene' 
- Per Bogstad Gulliksen i akt 'Akt 5', Forestilling: 'Kongsemnene' 
- Snorre Tøndel i akt 'Akt 5', Forestilling: 'Kongsemnene'
- Synnøve Eriksen i akt 'Akt 5', Forestilling: 'Kongsemnene'
```
