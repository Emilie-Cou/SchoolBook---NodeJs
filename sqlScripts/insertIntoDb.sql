use ProjectSchoolBook;
go


-- Professeurs pour les classes de Maternelle (M1 � M3)
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('CA1234', 'M1a12345', 'Camille', 'M1a', 'camille@ecole.com', '/public/pics/profs/cruella.jpg'),
('DA5678', 'M1b12345', 'David', 'M1b', 'david@ecole.com', '/public/pics/profs/crochet.jpg'),
('EL1234', 'M2a12345', '�lise', 'M2a', 'elise@ecole.com', '/public/pics/profs/damedecoeur.jpg'),
('FL5678', 'M2b12345', 'Florian', 'M2b', 'florian@ecole.com', '/public/pics/profs/facilier.jpg'),
('GI1234', 'M3a12345', 'Giselle', 'M3a', 'giselle@ecole.com', '/public/pics/profs/malefique.jpg'),
('HU5678', 'M3b12345', 'Hugo', 'M3b', 'hugo@ecole.com', '/public/pics/profs/febus.jpg');
-- Professeurs pour les classes de Primaire (P1 � P6)
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('AL1234', 'P1a12345', 'Alexis', 'P1a', 'alexis@ecole.com', '/public/pics/profs/jafar.jpg'),
('BE5678', 'P1b12345', 'B�atrice', 'P1b', 'beatrice@ecole.com', '/public/pics/profs/meregothel.jpg'),
('CL1234', 'P2a12345', 'Cl�ment', 'P2a', 'clement@ecole.com', '/public/pics/profs/hades.jpg'),
('DE5678', 'P2b12345', 'Delphine', 'P2b', 'delphine@ecole.com', '/public/pics/profs/mmemime.jpg'),
('EM1234', 'P3a12345', '�mile', 'P3a', 'emile@ecole.com', '/public/pics/profs/hans.jpg'),
('FA5678', 'P3b12345', 'Fanny', 'P3b', 'fanny@ecole.com', '/public/pics/profs/ursula.jpg'),
('GA1234', 'P4a12345', 'Gaston', 'P4a', 'gaston@ecole.com', '/public/pics/profs/gaston.jpg'),
('HE5678', 'P4b12345', 'H�l�ne', 'P4b', 'helene@ecole.com', '/public/pics/profs/vieillereine.jpg'),
('IS1234', 'P5a12345', 'Isabelle', 'P5a', 'isabelle@ecole.com', '/public/pics/profs/shanyu.jpg'),
('JU5678', 'P5b12345', 'Julien', 'P5b', 'julien@ecole.com', '/public/pics/profs/ratcliffe.jpg'),
('KA1234', 'P6a12345', 'Karine', 'P6a', 'karine@ecole.com', '/public/pics/profs/tamatoa.jpg'),
('LO5678', 'P6b12345', 'Louis', 'P6b', 'louis@ecole.com', '/public/pics/profs/scar.jpg');
-- Directrice
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('MA1234', 'Dir12345', 'Maratre', 'DIR', 'directrice@ecole.com', '/public/pics/profs/maratre.jpg');
-- Secr�taire 1
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('AN1234', 'Sec12345', 'Anastasie', 'SEC1', 'secretaire1@ecole.com', '/public/pics/profs/anastasie.jpg');
-- Secr�taire 2
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('JA5678', 'Sec12346', 'Javotte', 'SEC2', 'secretaire2@ecole.com', '/public/pics/profs/javotte.jpg');


-- Classes de Maternelle (M1 � M3)
INSERT INTO [Classe] ([IdClasse], [NomClasse], [IdProf], [Description], [CourteDescription], [Img])
VALUES
('M1a', 'Maternelle 1A', 'CA1234', 'Apprentissage et jeu pour les plus petits.', 'Vive les jeux', '/public/pics/ecole/Ecole.jpg'),
('M1b', 'Maternelle 1B', 'DA5678', 'D�couverte et cr�ativit� pour les tout-petits.', 'Quelle cr�ativit�', '/public/pics/ecole/Ecole.jpg'),
('M2a', 'Maternelle 2A', 'EL1234', 'Continuation de lapprentissage et de lexploration.', 'Les explorateurs font des explorations', '/public/pics/ecole/Ecole.jpg'),
('M2b', 'Maternelle 2B', 'FL5678', 'Jeux et d�couvertes pour les enfants.', 'On d�couvre le monde', '/public/pics/ecole/Ecole.jpg'),
('M3a', 'Maternelle 3A', 'GI1234', 'Pr�paration pour le primaire.', 'Bient�t chez les grands', '/public/pics/ecole/Ecole.jpg'),
('M3b', 'Maternelle 3B', 'HU5678', 'Derni�re �tape avant le primaire.', 'Bient�t chez les grands', '/public/pics/ecole/Ecole.jpg');
-- Classes de Primaire (P1 � P6)
INSERT INTO [Classe] ([IdClasse], [NomClasse], [IdProf], [Description], [CourteDescription], [Img])
VALUES
('P1a', 'Primaire 1A', 'AL1234', 'Premier pas vers le primaire.', 'Je suis un grand', '/public/pics/ecole/Ecole.jpg'),
('P1b', 'Primaire 1B', 'BE5678', 'Apprentissage et d�couverte pour les premiers primaires.', 'Je suis un grand', '/public/pics/ecole/Ecole.jpg'),
('P2a', 'Primaire 2A', 'CL1234', 'Deuxi�me ann�e de primaire.', 'On lit beaucoup', '/public/pics/ecole/Ecole.jpg'),
('P2b', 'Primaire 2B', 'DE5678', 'Continuation de lapprentissage au primaire.', 'On �crit beaucoup', '/public/pics/ecole/Ecole.jpg'),
('P3a', 'Primaire 3A', 'EM1234', 'Troisi�me ann�e de primaire.', 'Je suis � la moiti�', '/public/pics/ecole/Ecole.jpg'),
('P3b', 'Primaire 3B', 'FA5678', '�tapes vers le CM1.', 'Plus que la moiti� � faire', '/public/pics/ecole/Ecole.jpg'),
('P4a', 'Primaire 4A', 'GA1234', 'Quatri�me ann�e de primaire.', 'Les examens vont �tre durs', '/public/pics/ecole/Ecole.jpg'),
('P4b', 'Primaire 4B', 'HE5678', 'En route pour un grand voyage.', 'Les examens vont �tre durs', '/public/pics/ecole/Ecole.jpg'),
('P5a', 'Primaire 5A', 'IS1234', 'Cinqui�me ann�e de primaire.', 'Derni�re ligne droite', '/public/pics/ecole/Ecole.jpg'),
('P5b', 'Primaire 5B', 'JU5678', 'Pr�paration pour la sixi�me ann�e.', 'Derni�re ligne droite', '/public/pics/ecole/Ecole.jpg'),
('P6a', 'Primaire 6A', 'KA1234', 'Derni�re ann�e de primaire avant le secondaire.', 'Je suis chez les tr�s grands', '/public/pics/ecole/Ecole.jpg'),
('P6b', 'Primaire 6B', 'LO5678', 'Pr�paration pour le secondaire.', 'Je suis chez les tr�s grands', '/public/pics/ecole/Ecole.jpg');
-- Direction
INSERT INTO [Classe] ([IdClasse], [NomClasse], [IdProf], [Description], [CourteDescription], [Img])
VALUES
('Dir', 'Direction', 'MA1234', 'Direction', 'Direction', '/public/pics/ecole/ecolehaut.jpg'),
('SEC1', 'Secr�taire', 'AN1234', 'Secr�taire', 'Secr�taire', '/public/pics/ecole/ecolehaut.jpg'),
('SEC2', 'Secr�taire', 'JA5678', 'Secr�taire', 'Secr�taire', '/public/pics/ecole/ecolehaut.jpg');


-- �tudiants pour Maternelle 1A (M1a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('CA12345', 'M1a1234CA', 'M1a5678CA', 'Camille', 'Andr�', 'M1a', 'False', 'parent1@ecole.com', NULL),
('LE12346', 'M1a7890CA', 'M1a2345CA', 'L�a', '�mile', 'M1a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('MA12347', 'M1a9123CA', 'M1a4567CA', 'Maxime', 'Antoine', 'M1a', 'False', 'parent4@ecole.com', NULL),
('AL12348', 'M1a3456CA', 'M1a6789CA', 'Alice', 'Louis', 'M1a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('EV12349', 'M1a5678CA', 'M1a0123CA', '�va', 'Victor', 'M1a', 'False', 'parent7@ecole.com', NULL),
('LI12340', 'M1a7890CA', 'M1a2345CA', 'Liam', 'Isabelle', 'M1a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('ZO12341', 'M1a0123CA', 'M1a3456CA', 'Zo�', 'Oliver', 'M1a', 'False', 'parent10@ecole.com', NULL),
('AN12342', 'M1a2345CA', 'M1a5678CA', 'Anna', 'Nathan', 'M1a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EM12343', 'M1a4567CA', 'M1a7890CA', 'Emma', 'Mathis', 'M1a', 'False', 'parent13@ecole.com', NULL),
('TI12344', 'M1a5678CA', 'M1a0123CA', 'Tim', 'In�s', 'M1a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- �tudiants pour Maternelle 1B (M1b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('DA12345', 'M1b1234DA', 'M1b5678DA', 'David', 'Alice', 'M1b', 'False', 'parent16@ecole.com', NULL),
('LU12346', 'M1b7890DA', 'M1b2345DA', 'Lucas', 'Ursula', 'M1b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('SI12347', 'M1b9123DA', 'M1b4567DA', 'Simon', 'Isabelle', 'M1b', 'False', 'parent19@ecole.com', NULL),
('EN12348', 'M1b3456DA', 'M1b6789DA', 'Emma', 'Noah', 'M1b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('LI12349', 'M1b5678DA', 'M1b0123DA', 'Liam', 'Lina', 'M1b', 'False', 'parent22@ecole.com', NULL),
('EL12340', 'M1b7890DA', 'M1b2345DA', 'Ella', 'L�o', 'M1b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('AL12341', 'M1b0123DA', 'M1b3456DA', 'Alice', 'L�on', 'M1b', 'False', 'parent25@ecole.com', NULL),
('LO12342', 'M1b2345DA', 'M1b5678DA', 'Louis', 'Olivia', 'M1b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('MA12343', 'M1b4567DA', 'M1b7890DA', 'Mia', 'Alexis', 'M1b', 'False', 'parent28@ecole.com', NULL),
('ZI12344', 'M1b5678DA', 'M1b0123DA', 'Zo�', 'Isaac', 'M1b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- �tudiants pour Maternelle 2A (M2a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'M2a1234EL', 'M2a5678EL', '�lise', 'Lucas', 'M2a', 'False', 'parent31@ecole.com', NULL),
('AL12346', 'M2a7890EL', 'M2a2345EL', 'Alice', 'L�o', 'M2a', 'True', 'parent32@ecole.com', 'parent33@ecole.com'),
('LO12347', 'M2a9123EL', 'M2a4567EL', 'Louis', 'Olivia', 'M2a', 'False', 'parent34@ecole.com', NULL),
('MI12348', 'M2a2345EL', 'M2a6789EL', 'Mia', 'Isaac', 'M2a', 'True', 'parent35@ecole.com', 'parent36@ecole.com'),
('JA12349', 'M2a4567EL', 'M2a0123EL', 'Jade', 'Aaron', 'M2a', 'False', 'parent37@ecole.com', NULL),
('OL12340', 'M2a7890EL', 'M2a2345EL', 'Olivia', 'L�on', 'M2a', 'True', 'parent38@ecole.com', 'parent39@ecole.com'),
('LU12341', 'M2a0123EL', 'M2a3456EL', 'Lucas', 'Lina', 'M2a', 'False', 'parent40@ecole.com', NULL),
('AM12342', 'M2a2345EL', 'M2a5678EL', 'Am�lie', 'Mathis', 'M2a', 'True', 'parent41@ecole.com', 'parent42@ecole.com'),
('EL12343', 'M2a4567EL', 'M2a0123EL', '�lo�se', 'Lucie', 'M2a', 'False', 'parent43@ecole.com', NULL),
('TH12344', 'M2a5678EL', 'M2a3456EL', 'Th�o', 'L�a', 'M2a', 'True', 'parent44@ecole.com', 'parent45@ecole.com');

-- �tudiants pour Maternelle 2B (M2b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('FL12345', 'M2b1234FL', 'M2b5678FL', 'Florian', 'L�a', 'M2b', 'False', 'parent46@ecole.com', NULL),
('MI12346', 'M2b7890FL', 'M2b2345FL', 'Mia', 'Isabelle', 'M2b', 'True', 'parent47@ecole.com', 'parent48@ecole.com'),
('OL12347', 'M2b9123FL', 'M2b4567FL', 'Olivia', 'L�o', 'M2b', 'False', 'parent49@ecole.com', NULL),
('LU12348', 'M2b2345FL', 'M2b6789FL', 'Lucas', 'Lina', 'M2b', 'True', 'parent50@ecole.com', 'parent51@ecole.com'),
('AN12349', 'M2b4567FL', 'M2b0123FL', 'Anna', 'Noah', 'M2b', 'False', 'parent52@ecole.com', NULL),
('LO12340', 'M2b7890FL', 'M2b2345FL', 'Louis', 'Oliver', 'M2b', 'True', 'parent53@ecole.com', 'parent54@ecole.com'),
('LE12341', 'M2b0123FL', 'M2b3456FL', 'L�o', '�lisabeth', 'M2b', 'False', 'parent55@ecole.com', NULL),
('SI12342', 'M2b2345FL', 'M2b5678FL', 'Simon', 'Isabella', 'M2b', 'True', 'parent56@ecole.com', 'parent57@ecole.com'),
('EN12343', 'M2b4567FL', 'M2b0123FL', 'Emma', 'Nathan', 'M2b', 'False', 'parent58@ecole.com', NULL),
('LI12344', 'M2b5678FL', 'M2b3456FL', 'Liam', 'Lina', 'M2b', 'True', 'parent59@ecole.com', 'parent60@ecole.com');

-- �tudiants pour Maternelle 3A (M3a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'M3a1234GI', 'M3a5678GI', '�lise', 'Lucas', 'M3a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'M3a7890GI', 'M3a2345GI', 'Alice', 'L�o', 'M3a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LO12347', 'M3a9123GI', 'M3a4567GI', 'Louis', 'Olivia', 'M3a', 'False', 'parent4@ecole.com', NULL),
('MI12348', 'M3a2345GI', 'M3a6789GI', 'Mia', 'Isaac', 'M3a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('JA12349', 'M3a4567GI', 'M3a0123GI', 'Jade', 'Aaron', 'M3a', 'False', 'parent7@ecole.com', NULL),
('OL12340', 'M3a7890GI', 'M3a2345GI', 'Olivia', 'L�on', 'M3a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LU12341', 'M3a0123GI', 'M3a3456GI', 'Lucas', 'Lina', 'M3a', 'False', 'parent10@ecole.com', NULL),
('AM12342', 'M3a2345GI', 'M3a5678GI', 'Am�lie', 'Mathis', 'M3a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'M3a4567GI', 'M3a0123GI', '�lo�se', 'Lucie', 'M3a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'M3a5678GI', 'M3a3456GI', 'Th�o', 'L�a', 'M3a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- �tudiants pour Maternelle 3B (M3b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('FL12345', 'M3b1234HU', 'M3b5678HU', 'Florian', 'L�a', 'M3b', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'M3b7890HU', 'M3b2345HU', 'Mia', 'Isabelle', 'M3b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'M3b9123HU', 'M3b4567HU', 'Olivia', 'L�o', 'M3b', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'M3b2345HU', 'M3b6789HU', 'Lucas', 'Lina', 'M3b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'M3b4567HU', 'M3b0123HU', 'Anna', 'Noah', 'M3b', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'M3b7890HU', 'M3b2345HU', 'Louis', 'Oliver', 'M3b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'M3b0123HU', 'M3b3456HU', 'L�o', '�lisabeth', 'M3b', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'M3b2345HU', 'M3b5678HU', 'Simon', 'Isabella', 'M3b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'M3b4567HU', 'M3b0123HU', 'Emma', 'Nathan', 'M3b', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'M3b5678HU', 'M3b3456HU', 'Liam', 'Lina', 'M3b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- �tudiants pour Primaire 1A (P1a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P1a1234AL', 'P1a5678AL', 'Emma', 'Samuel', 'P1a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P1a7890AL', 'P1a2345AL', 'Alex', 'Sophie', 'P1a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P1a9123AL', 'P1a4567AL', 'Liam', 'Isabelle', 'P1a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P1a2345AL', 'P1a6789AL', 'Olivia', 'Lucas', 'P1a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P1a4567AL', 'P1a0123AL', 'Noah', 'Oc�ane', 'P1a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P1a7890AL', 'P1a2345AL', 'Mia', 'Isaac', 'P1a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P1a0123AL', 'P1a3456AL', 'L�a', 'Ethan', 'P1a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P1a2345AL', 'P1a5678AL', 'Liam', 'In�s', 'P1a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P1a4567AL', 'P1a0123AL', '�lise', 'L�o', 'P1a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P1a5678AL', 'P1a3456AL', 'Th�o', 'H�lo�se', 'P1a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- �tudiants pour Primaire 1B (P1b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('AL12345', 'P1b1234BE', 'P1b5678BE', 'Alice', 'L�o', 'P1b', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'P1b7890BE', 'P1b2345BE', 'Mia', 'Isabelle', 'P1b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'P1b9123BE', 'P1b4567BE', 'Olivia', 'L�o', 'P1b', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'P1b2345BE', 'P1b6789BE', 'Lucas', 'Lina', 'P1b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P1b4567BE', 'P1b0123BE', 'Anna', 'Noah', 'P1b', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'P1b7890BE', 'P1b2345BE', 'Louis', 'Oliver', 'P1b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'P1b0123BE', 'P1b3456BE', 'L�o', '�lisabeth', 'P1b', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'P1b2345BE', 'P1b5678BE', 'Simon', 'Isabella', 'P1b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'P1b4567BE', 'P1b0123BE', 'Emma', 'Nathan', 'P1b', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'P1b5678BE', 'P1b3456BE', 'Liam', 'Lina', 'P1b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- �tudiants pour Primaire 2A (P2a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P2a1234CL', 'P2a5678CL', '�lise', 'Samuel', 'P2a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P2a7890CL', 'P2a2345CL', 'Alex', 'Sophie', 'P2a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P2a9123CL', 'P2a4567CL', 'Liam', 'Isabelle', 'P2a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P2a2345CL', 'P2a6789CL', 'Olivia', 'Lucas', 'P2a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P2a4567CL', 'P2a0123CL', 'Noah', 'Oc�ane', 'P2a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P2a7890CL', 'P2a2345CL', 'Mia', 'Isaac', 'P2a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P2a0123CL', 'P2a3456CL', 'L�a', 'Ethan', 'P2a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P2a2345CL', 'P2a5678CL', 'Liam', 'In�s', 'P2a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P2a4567CL', 'P2a0123CL', '�lise', 'L�o', 'P2a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P2a5678CL', 'P2a3456CL', 'Th�o', 'H�lo�se', 'P2a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- �tudiants pour Primaire 2B (P2b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('AL12345', 'P2b1234DE', 'P2b5678DE', 'Alice', 'L�o', 'P2b', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'P2b7890DE', 'P2b2345DE', 'Mia', 'Isabelle', 'P2b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'P2b9123DE', 'P2b4567DE', 'Olivia', 'L�o', 'P2b', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'P2b2345DE', 'P2b6789DE', 'Lucas', 'Lina', 'P2b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P2b4567DE', 'P2b0123DE', 'Anna', 'Noah', 'P2b', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'P2b7890DE', 'P2b2345DE', 'Louis', 'Oliver', 'P2b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'P2b0123DE', 'P2b3456DE', 'L�o', '�lisabeth', 'P2b', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'P2b2345DE', 'P2b5678DE', 'Simon', 'Isabella', 'P2b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'P2b4567DE', 'P2b0123DE', 'Emma', 'Nathan', 'P2b', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'P2b5678DE', 'P2b3456DE', 'Liam', 'Lina', 'P2b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- �tudiants pour Primaire 3A (P3a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P3a1234EM', 'P3a5678EM', 'Emma', 'Samuel', 'P3a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P3a7890EM', 'P3a2345EM', 'Alex', 'Sophie', 'P3a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P3a9123EM', 'P3a4567EM', 'Liam', 'Isabelle', 'P3a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P3a2345EM', 'P3a6789EM', 'Olivia', 'Lucas', 'P3a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P3a4567EM', 'P3a0123EM', 'Noah', 'Oc�ane', 'P3a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P3a7890EM', 'P3a2345EM', 'Mia', 'Isaac', 'P3a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P3a0123EM', 'P3a3456EM', 'L�a', 'Ethan', 'P3a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P3a2345EM', 'P3a5678EM', 'Liam', 'In�s', 'P3a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P3a4567EM', 'P3a0123EM', '�lise', 'L�o', 'P3a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P3a5678EM', 'P3a3456EM', 'Th�o', 'H�lo�se', 'P3a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P3a1234EM', 'P3a5678EM', 'Am�lie', 'Mathis', 'P3a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P3a7890EM', 'P3a2345EM', 'Rose', 'Olivier', 'P3a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P3a9123EM', 'P3a4567EM', 'Thomas', 'H�lo�se', 'P3a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P3a2345EM', 'P3a6789EM', 'Victor', 'Isabella', 'P3a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P3a4567EM', 'P3a0123EM', 'Anna', 'Nathan', 'P3a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P3a7890EM', 'P3a2345EM', 'Liam', 'Lina', 'P3a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 3B (P3b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P3b1234FA', 'P3b5678FA', '�lise', 'Samuel', 'P3b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P3b7890FA', 'P3b2345FA', 'Alex', 'Sophie', 'P3b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P3b9123FA', 'P3b4567FA', 'Liam', 'Isabelle', 'P3b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P3b2345FA', 'P3b6789FA', 'Olivia', 'Lucas', 'P3b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P3b4567FA', 'P3b0123FA', 'Noah', 'Oc�ane', 'P3b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P3b7890FA', 'P3b2345FA', 'Mia', 'Isaac', 'P3b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P3b0123FA', 'P3b3456FA', 'L�a', 'Ethan', 'P3b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P3b2345FA', 'P3b5678FA', 'Liam', 'In�s', 'P3b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P3b4567FA', 'P3b0123FA', '�lise', 'L�o', 'P3b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P3b5678FA', 'P3b3456FA', 'Th�o', 'H�lo�se', 'P3b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P3b1234FA', 'P3b5678FA', 'Am�lie', 'Mathis', 'P3b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P3b7890FA', 'P3b2345FA', 'Rose', 'Olivier', 'P3b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P3b9123FA', 'P3b4567FA', 'Thomas', 'H�lo�se', 'P3b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P3b2345FA', 'P3b6789FA', 'Victor', 'Isabella', 'P3b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P3b4567FA', 'P3b0123FA', 'Anna', 'Nathan', 'P3b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P3b7890FA', 'P3b2345FA', 'Liam', 'Lina', 'P3b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 4A (P4a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P4a1234GA', 'P4a5678GA', 'Emma', 'Samuel', 'P4a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P4a7890GA', 'P4a2345GA', 'Alex', 'Sophie', 'P4a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P4a9123GA', 'P4a4567GA', 'Liam', 'Isabelle', 'P4a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P4a2345GA', 'P4a6789GA', 'Olivia', 'Lucas', 'P4a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P4a4567GA', 'P4a0123GA', 'Noah', 'Oc�ane', 'P4a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P4a7890GA', 'P4a2345GA', 'Mia', 'Isaac', 'P4a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P4a0123GA', 'P4a3456GA', 'L�a', 'Ethan', 'P4a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P4a2345GA', 'P4a5678GA', 'Liam', 'In�s', 'P4a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P4a4567GA', 'P4a0123GA', '�lise', 'L�o', 'P4a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P4a5678GA', 'P4a3456GA', 'Th�o', 'H�lo�se', 'P4a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P4a1234GA', 'P4a5678GA', 'Am�lie', 'Mathis', 'P4a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P4a7890GA', 'P4a2345GA', 'Rose', 'Olivier', 'P4a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P4a9123GA', 'P4a4567GA', 'Thomas', 'H�lo�se', 'P4a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P4a2345GA', 'P4a6789GA', 'Victor', 'Isabella', 'P4a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P4a4567GA', 'P4a0123GA', 'Anna', 'Nathan', 'P4a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P4a7890GA', 'P4a2345GA', 'Liam', 'Lina', 'P4a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 4B (P4b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P4b1234HE', 'P4b5678HE', '�lise', 'Samuel', 'P4b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P4b7890HE', 'P4b2345HE', 'Alex', 'Sophie', 'P4b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P4b9123HE', 'P4b4567HE', 'Liam', 'Isabelle', 'P4b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P4b2345HE', 'P4b6789HE', 'Olivia', 'Lucas', 'P4b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P4b4567HE', 'P4b0123HE', 'Noah', 'Oc�ane', 'P4b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P4b7890HE', 'P4b2345HE', 'Mia', 'Isaac', 'P4b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P4b0123HE', 'P4b3456HE', 'L�a', 'Ethan', 'P4b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P4b2345HE', 'P4b5678HE', 'Liam', 'In�s', 'P4b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P4b4567HE', 'P4b0123HE', '�lise', 'L�o', 'P4b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P4b5678HE', 'P4b3456HE', 'Th�o', 'H�lo�se', 'P4b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P4b1234HE', 'P4b5678HE', 'Am�lie', 'Mathis', 'P4b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P4b7890HE', 'P4b2345HE', 'Rose', 'Olivier', 'P4b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P4b9123HE', 'P4b4567HE', 'Thomas', 'H�lo�se', 'P4b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P4b2345HE', 'P4b6789HE', 'Victor', 'Isabella', 'P4b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P4b4567HE', 'P4b0123HE', 'Anna', 'Nathan', 'P4b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P4b7890HE', 'P4b2345HE', 'Liam', 'Lina', 'P4b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 5A (P5a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P5a1234IS', 'P5a5678IS', 'Emma', 'Samuel', 'P5a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P5a7890IS', 'P5a2345IS', 'Alex', 'Sophie', 'P5a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P5a9123IS', 'P5a4567IS', 'Liam', 'Isabelle', 'P5a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P5a2345IS', 'P5a6789IS', 'Olivia', 'Lucas', 'P5a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P5a4567IS', 'P5a0123IS', 'Noah', 'Oc�ane', 'P5a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P5a7890IS', 'P5a2345IS', 'Mia', 'Isaac', 'P5a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P5a0123IS', 'P5a3456IS', 'L�a', 'Ethan', 'P5a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P5a2345IS', 'P5a5678IS', 'Liam', 'In�s', 'P5a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P5a4567IS', 'P5a0123IS', '�lise', 'L�o', 'P5a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P5a5678IS', 'P5a3456IS', 'Th�o', 'H�lo�se', 'P5a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P5a1234IS', 'P5a5678IS', 'Am�lie', 'Mathis', 'P5a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P5a7890IS', 'P5a2345IS', 'Rose', 'Olivier', 'P5a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P5a9123IS', 'P5a4567IS', 'Thomas', 'H�lo�se', 'P5a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P5a2345IS', 'P5a6789IS', 'Victor', 'Isabella', 'P5a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P5a4567IS', 'P5a0123IS', 'Anna', 'Nathan', 'P5a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P5a7890IS', 'P5a2345IS', 'Liam', 'Lina', 'P5a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 5B (P5b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P5b1234JU', 'P5b5678JU', '�lise', 'Samuel', 'P5b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P5b7890JU', 'P5b2345JU', 'Alex', 'Sophie', 'P5b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P5b9123JU', 'P5b4567JU', 'Liam', 'Isabelle', 'P5b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P5b2345JU', 'P5b6789JU', 'Olivia', 'Lucas', 'P5b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P5b4567JU', 'P5b0123JU', 'Noah', 'Oc�ane', 'P5b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P5b7890JU', 'P5b2345JU', 'Mia', 'Isaac', 'P5b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P5b0123JU', 'P5b3456JU', 'L�a', 'Ethan', 'P5b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P5b2345JU', 'P5b5678JU', 'Liam', 'In�s', 'P5b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P5b4567JU', 'P5b0123JU', '�lise', 'L�o', 'P5b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P5b5678JU', 'P5b3456JU', 'Th�o', 'H�lo�se', 'P5b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P5b1234JU', 'P5b5678JU', 'Am�lie', 'Mathis', 'P5b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P5b7890JU', 'P5b2345JU', 'Rose', 'Olivier', 'P5b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P5b9123JU', 'P5b4567JU', 'Thomas', 'H�lo�se', 'P5b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P5b2345JU', 'P5b6789JU', 'Victor', 'Isabella', 'P5b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P5b4567JU', 'P5b0123JU', 'Anna', 'Nathan', 'P5b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P5b7890JU', 'P5b2345JU', 'Liam', 'Lina', 'P5b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 6A (P6a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P6a1234KA', 'P6a5678KA', 'Emma', 'Samuel', 'P6a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P6a7890KA', 'P6a2345KA', 'Alex', 'Sophie', 'P6a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P6a9123KA', 'P6a4567KA', 'Liam', 'Isabelle', 'P6a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P6a2345KA', 'P6a6789KA', 'Olivia', 'Lucas', 'P6a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P6a4567KA', 'P6a0123KA', 'Noah', 'Oc�ane', 'P6a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P6a7890KA', 'P6a2345KA', 'Mia', 'Isaac', 'P6a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P6a0123KA', 'P6a3456KA', 'L�a', 'Ethan', 'P6a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P6a2345KA', 'P6a5678KA', 'Liam', 'In�s', 'P6a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P6a4567KA', 'P6a0123KA', '�lise', 'L�o', 'P6a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P6a5678KA', 'P6a3456KA', 'Th�o', 'H�lo�se', 'P6a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P6a1234KA', 'P6a5678KA', 'Am�lie', 'Mathis', 'P6a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P6a7890KA', 'P6a2345KA', 'Rose', 'Olivier', 'P6a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P6a9123KA', 'P6a4567KA', 'Thomas', 'H�lo�se', 'P6a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P6a2345KA', 'P6a6789KA', 'Victor', 'Isabella', 'P6a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P6a4567KA', 'P6a0123KA', 'Anna', 'Nathan', 'P6a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P6a7890KA', 'P6a2345KA', 'Liam', 'Lina', 'P6a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- �tudiants pour Primaire 6B (P6b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P6b1234LO', 'P6b5678LO', '�lise', 'Samuel', 'P6b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P6b7890LO', 'P6b2345LO', 'Alex', 'Sophie', 'P6b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P6b9123LO', 'P6b4567LO', 'Liam', 'Isabelle', 'P6b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P6b2345LO', 'P6b6789LO', 'Olivia', 'Lucas', 'P6b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P6b4567LO', 'P6b0123LO', 'Noah', 'Oc�ane', 'P6b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P6b7890LO', 'P6b2345LO', 'Mia', 'Isaac', 'P6b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P6b0123LO', 'P6b3456LO', 'L�a', 'Ethan', 'P6b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P6b2345LO', 'P6b5678LO', 'Liam', 'In�s', 'P6b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P6b4567LO', 'P6b0123LO', '�lise', 'L�o', 'P6b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P6b5678LO', 'P6b3456LO', 'Th�o', 'H�lo�se', 'P6b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P6b1234LO', 'P6b5678LO', 'Am�lie', 'Mathis', 'P6b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P6b7890LO', 'P6b2345LO', 'Rose', 'Olivier', 'P6b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P6b9123LO', 'P6b4567LO', 'Thomas', 'H�lo�se', 'P6b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P6b2345LO', 'P6b6789LO', 'Victor', 'Isabella', 'P6b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P6b4567LO', 'P6b0123LO', 'Anna', 'Nathan', 'P6b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P6b7890LO', 'P6b2345LO', 'Liam', 'Lina', 'P6b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');
