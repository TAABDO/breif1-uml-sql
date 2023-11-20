
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
