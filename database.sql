
-- Création de la table admin
CREATE TABLE admin (
    id_admin INT PRIMARY KEY,      
    surname VARCHAR(255),           
    name VARCHAR(255),              
    pwd_admin VARCHAR(255),         
    email_admin VARCHAR(255),       
    phoneNum_admin INT,            
    siretNum INT                   
);

-- Création de la table user
CREATE TABLE user (
    id INT PRIMARY KEY,             
    id_admin INT,                   
    name_user VARCHAR(255),         
    surname_user VARCHAR(255),     
    pwd_user VARCHAR(255),        
    numSecu_user INT,               
    num_user INT,                  
    CONSTRAINT fk_admin             
        FOREIGN KEY (id_admin) 
        REFERENCES admin(id_admin)  
        ON DELETE SET NULL          
);

-- Optionnel : Insertion d'exemples de données
INSERT INTO admin (id_admin, surname, name, pwd_admin, email_admin, phoneNum_admin, siretNum)
VALUES (1, 'NDIAYE', 'Yandé', 'password123', 'yande.ndiaye@admin.com', 123456789, 987654321);

INSERT INTO user (id, id_admin, name_user, surname_user, pwd_user, birthDate_user, numSecu_user, num_user, numTutor_user)
VALUES (1, 1, 'Jane', 'Doe', 'password456', '1990-05-20', 123456789, 1001, 5001);

-- Exemple d'un user sans admin (id_admin = NULL)
INSERT INTO user (id, id_admin, name_user, surname_user, pwd_user, birthDate_user, numSecu_user, num_user, numTutor_user)
VALUES (2, NULL, 'Alice', 'Smith', 'password789', '1985-11-15', 987654321, 1002, 5002);