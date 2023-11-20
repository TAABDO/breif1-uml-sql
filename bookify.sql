
-- creation de database

CREATE DATABASE bookify;
-- creation des table
CREATE TABLE Salles (

    id int PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(50),  
    Capacite int
);
CREATE TABLE Employes(

    id int PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(50),
    Email varchar(50), 
    Departement varchar(50), 
    Poste varchar(50)

);
CREATE TABLE Equipements(

    id int PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(50),
    Salle_id int,
    FOREIGN KEY (Salle_id) REFERENCES Salles(id)
);

CREATE TABLE Reservations(
    id int PRIMARY KEY AUTO_INCREMENT,
    Date_Debut date, 
    Date_Fin date,
    Salle_id int,
    Employe_id int,
    FOREIGN KEY (Salle_id) REFERENCES salles(id), 
    FOREIGN KEY (Employe_id) REFERENCES Employes(id) 
);
-- inserstion des donnes
INSERT INTO  salles (Nom,Capacite) 
  VALUES ('taouil',23),
         ('abdo',3),
         ('nabile',2),
         ('hazine',22);


INSERT INTO Equipements (Nom,Salle_id) 
  VALUES ('table',1),
         ('microphone',3),
         ('datashow',4);

INSERT INTO Employes (Nom, Email, Departement, Poste ) 
   VALUES ('taouil','nam@gamil.com','IT','ciybersecurety'),
          ('nabile','nam@gamil.com','web','google'),
          ('abdo','nam@gamil.com','app','youtube');
    
INSERT INTO Reservations (Date_Debut,Date_Fin,Salle_id,Employe_id)
VALUES('2023/10/11','2023/10/12',1,1),
      ('2023/10/11','2023/10/12',3,2),
      ('2023/10/11','2023/10/12',1,3);
-- update un table reservation
update Reservations
   set Date_Debut='2023/10/12' and Date_Fin='2023/10/13'
 where id=2;

 update Reservations
     set Date_Debut='2023/10/13' and Date_Fin='2023/10/14'
 where id=3;

SELECT * FROM employes where Nom='taouil';

SELECT * FROM Reservations inner JOIN Employes on Reservations.Employe_id = employes.id inner JOIN Salles on Salles.id=employes.id

  where employes.Nom='nabile' and Salles.Nom='math';