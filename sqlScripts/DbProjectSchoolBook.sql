USE ProjectSchoolBook;
GO

create table [Classe] (
	[IdClasse] NVARCHAR(5) UNIQUE NOT NULL,
	[NomClasse] NVARCHAR(30) NOT NULL,
	[IdProf] NVARCHAR(10) NOT NULL,
	[Description] NVARCHAR(500),
	[CourteDescription] NVARCHAR(100),
	[Img] NVARCHAR(200) NULL,
);


create table [Professor] (
	[IdProf] NVARCHAR(10) UNIQUE NOT NULL,
	[Password] NVARCHAR(20) UNIQUE NOT NULL,
	[Nom] NVARCHAR(30) NULL,
	[IdClasse] NVARCHAR(5) NOT NULL,
	[Email] NVARCHAR(75),
	[Img] NVARCHAR(200) NULL,
);


create table [Student] (
	[IdStudent] NVARCHAR(10) NOT NULL,
	[Password1] NVARCHAR(20) NOT NULL,
	[Password2] NVARCHAR(20) NULL,
	[Nom] NVARCHAR(30),
	[Pr�nom] NVARCHAR(30),
	[IdClasse] NVARCHAR(5) NOT NULL,
	[SeparatedParents] NVARCHAR(5),
	[Email1] NVARCHAR(75),
	[Email2] NVARCHAR(75),
);


create table [Commentaire] (
	[Prenom] NVARCHAR(30) NOT NULL,
	[Content] NVARCHAR(MAX) NOT NULL,
);


create table [Blog] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[IdBlog] INT IDENTITY(1,1) NOT NULL,
	[Titre] NVARCHAR(50) NOT NULL,
	[Img] NVARCHAR(200),
	[Desc] NVARCHAR(MAX) NOT NULL,
);


create table [BlogCom] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[IdBlog] INT NOT NULL,
	[Prenom] NVARCHAR(30) NOT NULL,
	[Content] NVARCHAR(MAX) NOT NULL,
);


create table [MsgParent] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[IdMsg] INT IDENTITY(1,1) NOT NULL,
	[Prenom] NVARCHAR(30),
	[Content] NVARCHAR(MAX),
)



INSERT INTO [Classe]([IdClasse], [NomClasse],[IdProf], [Description], [CourteDescription], [Img])
VALUES	('P1A', 'Premi�re primaire','CH1234', 'Classe de premi�re primaire. Vive la lecture et la maison de dix. On se pr�pare pour la mer.', 'Les premi�res ont beaucoup de nouveaux apprentissages.', '/public/pics/Ecole.jpg'),
		('P2A', 'Deuxi�me primaire', 'SF1234', 'Classe de deuxi�me primaire. Vive la lecture et les amis de vingt. On se pr�pare pour la mer.', 'Les deuxi�mes continuent leurs apprentissages.', '/public/pics/ecolehaut.jpg');


INSERT INTO [Professor]([IdProf], [Password], [Nom], [IdClasse], [Email])
VALUES	('CH1234', 'P1ArandomPSW1', 'Camille', 'P1A', 'camille@blabla.be'),
		('SF1234', 'P2ArandomPSW2', 'Sabrina', 'P2A', 'sabrina@blabla.be');


INSERT INTO [Student]([IdStudent], [Password1], [Password2], [Nom], [Pr�nom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES	('CE123457','P1A12346SF12', 'P1A12345SF12', 'Coubeau', 'Elisa', 'P1A', 'False', 'parent1@email.be', 'parent2@email.be'),
		('CE123456','P2A12346CH12', 'P2A12345CH12', 'Coubeau', 'Elia', 'P2A', 'False', 'parent1@email.be', 'parent2@email.be');


INSERT INTO [Commentaire]([Prenom], [Content])
VALUES	('Zaza','Hello World'),
		('Princesse', 'Coucou Emilie');


INSERT INTO [Blog]([IdClasse], [Titre], [Img], [Desc])
VALUES	('P1A', 'Lecture', '/public/pics/ecole/Ecole.jpg', 'La lecture est un apprentissage difficile.'),
		('P2A', 'Annif', '/public/pics/ecole/ecolehaut.jpg', 'Jouyeux anniversaire');


INSERT INTO [BlogCom] ([IdClasse], [IdBlog], [Prenom], [Content])
VALUES	('P1A', 1, 'prenom test', 'Ceci est un message test'),
		('P2A', 2, 'prenom bis', 'Ceci est un autre message test')


select * from [Classe];
select * from [Professor];
select * from [Student];
select * from [Commentaire];
select * from [Blog];
select * from [BlogCom];
select * from [MsgParent];


-- A faire / trouver
-- J'ai @user et @password
-- Je dois v�rifier si ils sont bons
-- Puis le comparer aux id
-- Puis r�cup�rer l'id classe et prof/�l�ve correspondant
-- Et afficher la page en fonction de cet id


-- A mettre � jour
-- Cr�taion des id et psw (random)
-- [IdProf] dans [Classe]




