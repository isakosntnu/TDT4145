
INSERT INTO Ansatt VALUES (1, 'Elisabeth Egseth Hansen', 'elisabethhansen@epost.no', 'Fast ansatt', 0, 0, 1);
INSERT INTO Ansatt VALUES (2, 'Arturo Scott', 'arturo@epost.no', 'Midlertidig ansatt', 0, 1, 0);
INSERT INTO Ansatt VALUES (3, 'Hans Petter Nilsen', 'hansnil@epost.no', 'Fast ansatt', 0, 1, 0); 
INSERT INTO Ansatt VALUES (4, 'Madeleine Nilsen', 'madnil@epost.no', 'Innleid', 0, 1, 0); 
INSERT INTO Ansatt VALUES (5, 'Emma Deichman', 'emmadeich@epost.no', 'Midlertidig ansatt', 0, 1, 0); 
INSERT INTO Ansatt VALUES (6, 'Per Bogstad Gulliksen', 'pergulliksen@epost.no', 'Fulltid', 0, 1, 0); 
INSERT INTO Ansatt VALUES (7, 'Yury Butusov', 'yurybut@epost.no', 'Frivillig', 1, 0 , 0); 
INSERT INTO Ansatt VALUES (8, 'Aleksandr Shishkin-Hokusai', 'alekshok@epost.no', 'Fulltid', 1, 0, 0); 
INSERT INTO Ansatt VALUES (9, 'Eivind Myren', 'eivindmyr@epost.no', 'Frivillig', 1, 0, 0);
INSERT INTO Ansatt VALUES (10, 'Mina Rype Stokke', 'minasto@epost.no', 'Innleid', 1, 0, 0);
INSERT INTO Ansatt VALUES (21, 'Ingunn Øyen', 'ingunn@epost.no', 'Midlertidig ansatt', 0, 1, 0); 
INSERT INTO Ansatt VALUES (22, 'Synnøve Eriksen', 'synnøve@epost.no', 'Innleid', 0, 1, 0); 
INSERT INTO Ansatt VALUES (23, 'Thomas Jensen Takyi', 'thomas@epost.no', 'Midlertidig ansatt', 0, 1, 0); 
INSERT INTO Ansatt VALUES (24, 'Isak Holmen Sørensen', 'isaks@epost.no', 'Fast ansatt', 0, 1, 0); 
INSERT INTO Ansatt VALUES (25, 'Fabian Heidelberg Lunde', 'fabian@epost.no', 'Midlertidig ansatt', 0, 1, 0); 
INSERT INTO Ansatt VALUES (26, 'Emil Olafsson', 'emil@epost.no', 'Innleid', 0, 1, 0);
INSERT INTO Ansatt VALUES (27, 'Snorre Tøndel', 'snorre@epost.no', 'Midlertidig ansatt', 0, 1, 0); 

INSERT INTO Ansatt VALUES (11, 'Sunniva Du Mond Nordal', 'sunnivanordal@epost.no', 'Fast ansatt', 0, 1, 0);
INSERT INTO Ansatt VALUES (12, 'Jo Saberniak', 'josaberniak@epost.no', 'Midlertidig ansatt', 0, 1, 0);
INSERT INTO Ansatt VALUES (13, 'Marte M. Steinholt', 'martesteinholt@epost.no', 'Innleid', 0, 1, 0);
INSERT INTO Ansatt VALUES (14, 'Tor Ivar Hagen', 'torhagen@epost.no', 'Innleid', 0, 1, 0);
INSERT INTO Ansatt VALUES (15, 'Jonas Corell', 'jonascorell@epost.no', 'Frivillig', 1, 0, 0);
INSERT INTO Ansatt VALUES (16, 'David Gehrt', 'davidghert@epost.no', 'Fast ansatt', 1, 0, 0);
INSERT INTO Ansatt VALUES (17, 'Gaute Tønder', 'davidtønder@epost.no', 'Midlertidig ansatt', 1, 0, 0);
INSERT INTO Ansatt VALUES (18, 'Magnus Mikkelsen', 'magnusm@epost.no', 'Fast ansatt', 1, 0, 0);
INSERT INTO Ansatt VALUES (19, 'Kristoffer Spender', 'kristofferspender@epost.no', 'Midlertidig ansatt', 1, 0, 0); 
INSERT INTO Ansatt VALUES (20, 'Åsmund Flaten', 'åsmundflaten@epost.no', 'Innleid', 0, 1, 0);
INSERT INTO Ansatt VALUES (28, 'Trond-Ove Skrødal', 'tronds@epost.no', 'Frivillig', 0, 1, 0); 
INSERT INTO Ansatt VALUES (29, 'Natalie Grøndal', 'natalie@epost.no', 'Midlertidig ansatt', 0, 1, 0); 

INSERT INTO Arbeidsoppgaver VALUES (1, 'Regissør');
INSERT INTO Arbeidsoppgaver VALUES (2, 'Scenograf');
INSERT INTO Arbeidsoppgaver VALUES (3, 'Kostymedesigner');
INSERT INTO Arbeidsoppgaver VALUES (4, 'Lysdesigner');
INSERT INTO Arbeidsoppgaver VALUES (5, 'Dramaturg');
INSERT INTO Arbeidsoppgaver VALUES (6, 'Musikalsk ansvarlig');


INSERT INTO OppgaveTilStykke VALUES (1, 1);
INSERT INTO OppgaveTilStykke VALUES (1, 2);
INSERT INTO OppgaveTilStykke VALUES (1, 3);
INSERT INTO OppgaveTilStykke VALUES (1, 4);
INSERT INTO OppgaveTilStykke VALUES (1, 5);
INSERT INTO OppgaveTilStykke VALUES (1, 6);
INSERT INTO OppgaveTilStykke VALUES (2, 1);
INSERT INTO OppgaveTilStykke VALUES (2, 2);
INSERT INTO OppgaveTilStykke VALUES (2, 3);
INSERT INTO OppgaveTilStykke VALUES (2, 4);
INSERT INTO OppgaveTilStykke VALUES (2, 5);
INSERT INTO OppgaveTilStykke VALUES (2, 6);


INSERT INTO Teater VALUES (1, 'Troendelag Teater', 1);


INSERT INTO Teatersal VALUES (1, 'Hovedscenen', 516, 1);
INSERT INTO Teatersal VALUES (2, 'Gamle scene', 332, 1);


INSERT INTO Teaterstykke VALUES (1, 'Kongsemnene', 'Vinter/vår', 1);
INSERT INTO Teaterstykke VALUES (2, 'Størst av alt er kjærligheten', 'Vinter/vår', 2);


INSERT INTO Pris VALUES (1, 'Ordinær');
INSERT INTO Pris VALUES (2, 'Honnør');
INSERT INTO Pris VALUES (3, 'Student');
INSERT INTO Pris VALUES (4, 'Gruppe 10');
INSERT INTO Pris VALUES (5, 'Gruppe honnør 10');
INSERT INTO Pris VALUES (6, 'Barn');


INSERT INTO PrisTilStykke VALUES (1, 1, 450 );
INSERT INTO PrisTilStykke VALUES (1, 2, 380);
INSERT INTO PrisTilStykke VALUES (1, 3, 280);
INSERT INTO PrisTilStykke VALUES (1, 4, 420);
INSERT INTO PrisTilStykke VALUES (1, 5, 360);

INSERT INTO PrisTilStykke VALUES (2, 1, 350);
INSERT INTO PrisTilStykke VALUES (2, 2, 300);
INSERT INTO PrisTilStykke VALUES (2, 3, 220);
INSERT INTO PrisTilStykke VALUES (2, 4, 220);
INSERT INTO PrisTilStykke VALUES (2, 5, 320);
INSERT INTO PrisTilStykke VALUES (2, 6, 270);

INSERT INTO Forestilling VALUES ('2024-02-01', 1, '19,00,00');
INSERT INTO Forestilling VALUES ('2024-02-02', 1, '19,00,00');
INSERT INTO Forestilling VALUES ('2024-02-03', 1, '19,00,00');
INSERT INTO Forestilling VALUES ('2024-02-05', 1, '19,00,00');
INSERT INTO Forestilling VALUES ('2024-02-06', 1, '19,00,00');
INSERT INTO Forestilling VALUES ('2024-02-03', 2, '18,30,00');
INSERT INTO Forestilling VALUES ('2024-02-06', 2, '18,30,00');
INSERT INTO Forestilling VALUES ('2024-02-07', 2, '18,30,00');
INSERT INTO Forestilling VALUES ('2024-02-12', 2, '18,30,00');
INSERT INTO Forestilling VALUES ('2024-02-13', 2, '18,30,00');
INSERT INTO Forestilling VALUES ('2024-02-14', 2, '18,30,00');

INSERT INTO Akt VALUES (1, 1, 'Akt 1');
INSERT INTO Akt VALUES (2, 1, 'Akt 2');
INSERT INTO Akt VALUES (3, 1, 'Akt 3');
INSERT INTO Akt VALUES (4, 1, 'Akt 4');
INSERT INTO Akt VALUES (5, 1, 'Akt 5');
INSERT INTO Akt VALUES (1, 2, 'Akt 1');


INSERT INTO Rolle VALUES (1, 'Haakon Haakonsen');
INSERT INTO Rolle VALUES (2, 'Dagfinn Bonde');
INSERT INTO Rolle VALUES (3, 'Jatgeir Skald');
INSERT INTO Rolle VALUES (4, 'Sigrid');
INSERT INTO Rolle VALUES (5, 'Ingeborg');
INSERT INTO Rolle VALUES (6, 'Guttorm Ingesson');
INSERT INTO Rolle VALUES (7, 'Skule Jarl');
INSERT INTO Rolle VALUES (8, 'Inga fraa Vartejg');
INSERT INTO Rolle VALUES (9, 'Paal Flida');
INSERT INTO Rolle VALUES (10, 'Ragnhild');
INSERT INTO Rolle VALUES (11, 'Gregorius Jonsson');
INSERT INTO Rolle VALUES (12, 'Margrete');
INSERT INTO Rolle VALUES (13, 'Biskop Nikolas');
INSERT INTO Rolle VALUES (14, 'Peter');


INSERT INTO Rolle VALUES (15, 'Seg selv');




INSERT INTO ErSkuespiller VALUES (1, 2);
INSERT INTO ErSkuespiller VALUES (2, 26);
INSERT INTO ErSkuespiller VALUES (3, 26);
INSERT INTO ErSkuespiller VALUES (4, 5);
INSERT INTO ErSkuespiller VALUES (5, 5);
INSERT INTO ErSkuespiller VALUES (6, 5);
INSERT INTO ErSkuespiller VALUES (7, 3);
INSERT INTO ErSkuespiller VALUES (8, 21);
INSERT INTO ErSkuespiller VALUES (9, 24);
INSERT INTO ErSkuespiller VALUES (10, 4);
INSERT INTO ErSkuespiller VALUES (11, 6);
INSERT INTO ErSkuespiller VALUES (12, 22);
INSERT INTO ErSkuespiller VALUES (13, 23);
INSERT INTO ErSkuespiller VALUES (14, 27);

INSERT INTO ErSkuespiller VALUES (15, 11);
INSERT INTO ErSkuespiller VALUES (15, 12);
INSERT INTO ErSkuespiller VALUES (15, 13);
INSERT INTO ErSkuespiller VALUES (15, 14);
INSERT INTO ErSkuespiller VALUES (15, 15);
INSERT INTO ErSkuespiller VALUES (15, 16);
INSERT INTO ErSkuespiller VALUES (15, 17);
INSERT INTO ErSkuespiller VALUES (15, 18);
INSERT INTO ErSkuespiller VALUES (15, 19);
INSERT INTO ErSkuespiller VALUES (15, 20);
INSERT INTO ErSkuespiller VALUES (15, 28);
INSERT INTO ErSkuespiller VALUES (15, 29);

INSERT INTO AnsattArbeidsoppgaver VALUES (7, 1);
INSERT INTO AnsattArbeidsoppgaver VALUES (8, 2);
INSERT INTO AnsattArbeidsoppgaver VALUES (8, 3);
INSERT INTO AnsattArbeidsoppgaver VALUES (9, 4);
INSERT INTO AnsattArbeidsoppgaver VALUES (10, 5);
INSERT INTO AnsattArbeidsoppgaver VALUES (7, 6);

INSERT INTO AnsattArbeidsoppgaver VALUES (15, 1);
INSERT INTO AnsattArbeidsoppgaver VALUES (16, 2);
INSERT INTO AnsattArbeidsoppgaver VALUES (16, 3);
INSERT INTO AnsattArbeidsoppgaver VALUES (18, 4);
INSERT INTO AnsattArbeidsoppgaver VALUES (19, 5);
INSERT INTO AnsattArbeidsoppgaver VALUES (17, 6);


INSERT INTO RolleIAkt VALUES (1, 1, 1);
INSERT INTO RolleIAkt VALUES (2, 1, 1);
INSERT INTO RolleIAkt VALUES (3, 1, 1);
INSERT INTO RolleIAkt VALUES (4, 1, 1);
INSERT INTO RolleIAkt VALUES (5, 1, 1);
INSERT INTO RolleIAkt VALUES (1, 1, 2);
INSERT INTO RolleIAkt VALUES (2, 1, 2);
INSERT INTO RolleIAkt VALUES (3, 1, 2);
INSERT INTO RolleIAkt VALUES (4, 1, 2);
INSERT INTO RolleIAkt VALUES (5, 1, 2);
INSERT INTO RolleIAkt VALUES (4, 1, 3);
INSERT INTO RolleIAkt VALUES (1, 1, 4);
INSERT INTO RolleIAkt VALUES (2, 1, 4);
INSERT INTO RolleIAkt VALUES (5, 1, 4);
INSERT INTO RolleIAkt VALUES (4, 1, 5);
INSERT INTO RolleIAkt VALUES (1, 1, 6);
INSERT INTO RolleIAkt VALUES (1, 1, 7);
INSERT INTO RolleIAkt VALUES (2, 1, 7);
INSERT INTO RolleIAkt VALUES (3, 1, 7);
INSERT INTO RolleIAkt VALUES (4, 1, 7);
INSERT INTO RolleIAkt VALUES (5, 1, 7);
INSERT INTO RolleIAkt VALUES (1, 1, 8);
INSERT INTO RolleIAkt VALUES (3, 1, 8);
INSERT INTO RolleIAkt VALUES (1, 1, 9);
INSERT INTO RolleIAkt VALUES (2, 1, 9);
INSERT INTO RolleIAkt VALUES (3, 1, 9);
INSERT INTO RolleIAkt VALUES (4, 1, 9);
INSERT INTO RolleIAkt VALUES (5, 1, 9);
INSERT INTO RolleIAkt VALUES (1, 1, 10);
INSERT INTO RolleIAkt VALUES (5, 1, 10);
INSERT INTO RolleIAkt VALUES (1, 1, 11);
INSERT INTO RolleIAkt VALUES (2, 1, 11);
INSERT INTO RolleIAkt VALUES (3, 1, 11);
INSERT INTO RolleIAkt VALUES (4, 1, 11);
INSERT INTO RolleIAkt VALUES (5, 1, 11);
INSERT INTO RolleIAkt VALUES (1, 1, 12);
INSERT INTO RolleIAkt VALUES (2, 1, 12);
INSERT INTO RolleIAkt VALUES (3, 1, 12);
INSERT INTO RolleIAkt VALUES (4, 1, 12);
INSERT INTO RolleIAkt VALUES (5, 1, 12);
INSERT INTO RolleIAkt VALUES (1, 1, 13);
INSERT INTO RolleIAkt VALUES (2, 1, 13);
INSERT INTO RolleIAkt VALUES (3, 1, 13);
INSERT INTO RolleIAkt VALUES (3, 1, 14);
INSERT INTO RolleIAkt VALUES (4, 1, 14);
INSERT INTO RolleIAkt VALUES (5, 1, 14);

INSERT INTO RolleIAkt VALUES (1, 2, 15);
