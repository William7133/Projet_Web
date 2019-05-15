DROP TABLE INFOSPERSONNELLES,
DROP TABLE STRUCTURES,
DROP TABLE FORMATION,
DROP TABLE COMPETENCE,
DROP TABLE EXPERIENCESPROFESIONNELLES,
DROP TABLE CENTREINTERETS,
DROP TABLE FORMULAIRE,

CREATE TABLE IF NOT EXISTS INFOSPERSONNELLES(
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
NOM VARCHAR(40) NOT NULL,
PRENOM VARCHAR(40) NOT NULL,
MAIL VARCHAR(50) NOT NULL,
TELEPHONE DECIMAL NOT NULL,
TYPEPERMIS VARCHAR (30) NOT NULL,
CONSTRAINT INFOSPERSONNELLES_pk PRIMARY KEY(ID)
)ENGINE = InnoDB;

INSERT INTO INFOSPERSONELLES(NOM) VALUES ('Fernandes');
INSERT INTO INFOSPERSONELLES(PRENOM) VALUES ('William');
INSERT INTO INFOSPERSONELLES(AGE) VALUES ('21');
INSERT INTO INFOSPERSONELLES(EMAIL) VALUES ('william.fernandes713@gmail.com');
INSERT INTO INFOSPERSONELLES(TYPEPERMIS) VALUES ('Permis B');


CREATE TABLE IF NOT EXISTS STRUCTURES(
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
NOM VARCHAR(40) NOT NULL,
VILLE VARCHAR(40) NOT NULL,
CODEPOSTAL DECIMAL NOT NULL,
CONSTRAINT STRUCTURES_pk PRIMARY KEY(ID)
)ENGINE = InnoDB;

INSERT INTO STRUCTURES(NOM) VALUES ('JEAN COMPAGNON');
INSERT INTO STRUCTURES(VILLE) VALUES ('REYRIEUX');
INSERT INTO STRUCTURES(CODEPOSTAL) VALUES ('01600');

INSERT INTO STRUCTURES(NOM) VALUES ('VAL DE SAONE');
INSERT INTO STRUCTURES(VILLE) VALUES ('TREVOUX');
INSERT INTO STRUCTURES(CODEPOSTAL) VALUES ('01600');

INSERT INTO STRUCTURES(NOM) VALUES ('YNOV CAMPUS');
INSERT INTO STRUCTURES(VILLE) VALUES ('LYON 7');
INSERT INTO STRUCTURES(CODEPOSTAL) VALUES ('69007');

INSERT INTO STRUCTURES(NOM) VALUES ('ADECCO');
INSERT INTO STRUCTURES(VILLE) VALUES ('NEUVILLE SUR SAONE');
INSERT INTO STRUCTURES(CODEPOSTAL) VALUES ('69250');

INSERT INTO STRUCTURES(NOM) VALUES ('PROMAN');
INSERT INTO STRUCTURES(VILLE) VALUES ('VILLEFRANCHE SUR SAONE');
INSERT INTO STRUCTURES(CODEPOSTAL) VALUES ('69400');


INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL) 
VALUES('ELLA', 'VIENNE', '38');
INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL) 
VALUES('FOREZIA', 'CHASSES', '38');
INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL)  
VALUES('MAIRIE', 'CHUZELLES', '38');
INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL) 
VALUES('YNOV', 'LYON', '69');


CREATE TABLE IF NOT EXISTS FORMATION(
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
DATEDEBUT DATE NOT NULL,
DATEFIN DATE NOT NULL,
DIPLOME VARCHAR(100),
NIVEAU VARCHAR(100),
IDSTRUCTURES SMALLINT UNSIGNED NOT NULL,
CONSTRAINT fromation_pk PRIMARY KEY(ID),
CONSTRAINT fromation_fk_structures FOREIGN KEY(IDSTRUCTURES) REFERENCES STRUCTURES(ID)
)ENGINE = InnoDB;

(SELECT STRUCTURES.ID
   FROM STRUCTURES
   WHERE ID = '2'

INSERT INTO FORMATION(IDSTRUCTURES, DATEDEBUT) VALUES ('2012-09/04');
INSERT INTO FORMATION(IDSTRUCTURES, DATEFIN) VALUES ('2016-06/30');
INSERT INTO FORMATION(IDSTRUCTURES, DIPLOME) VALUES ('BAC STMG');
INSERT INTO FORMATION(IDSTRUCTURES, NIVEAU) VALUES ('LYCEE');
);

(SELECT STRUCTURES.ID
   FROM STRUCTURES
   WHERE ID = '5'

INSERT INTO FORMATION(IDSTRUCTURES, DATEDEBUT) VALUES ('2018-09/17');
INSERT INTO FORMATION(IDSTRUCTURES, DATEFIN) VALUES ('2019-07/09');
INSERT INTO FORMATION(IDSTRUCTURES, DIPLOME) VALUES ('BACHELOR');
INSERT INTO FORMATION(IDSTRUCTURES, NIVEAU) VALUES ('BAC+1');
);


CREATE TABLE IF NOT EXISTS COMPETENCE(
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
NOM VARCHAR(40) NOT NULL,
NIVEAU VARCHAR(40) NOT NULL,
DOMAINE VARCHAR(50) NOT NULL,
IDINFO SMALLINT UNSIGNED NOT NULL,
CONSTRAINT competence_pk PRIMARY KEY(ID),
CONSTRAINT competence_fk_infoperso FOREIGN KEY(IDINFO) REFERENCES INFOPERSO(ID)
)ENGINE = InnoDB;

 (SELECT INFOSPERSONELLES.ID
   FROM INFOSPERSONNELLES
   WHERE ID = '1'

INSERT INTO COMPETENCE (IDINFO, NOM) VALUES ('HTML/CSS');
INSERT INTO COMPETENCE (IDINFO, NIVEAU) VALUES ('3.5/5');
INSERT INTO COMPETENCE (IDINFO, DOMAINE) VALUES ('DEVELOPPEMENT WEB');
);

(SELECT INFOSPERSONNELLES.ID
   FROM INFOSPERSONNELLES
   WHERE ID = '1'

INSERT INTO COMPETENCE (IDINFO, NOM) VALUES ('LANGAGE C');
INSERT INTO COMPETENCE (IDINFO, NIVEAU) VALUES ('3/5');
INSERT INTO COMPETENCE (IDINFO, DOMAINE) VALUES ('DEVELOPPEMENT LOGICIELS');
);

(SELECT INFOSPERSONNELLES.ID
   FROM INFOSPERSONNELLES
   WHERE ID = '1'
  
INSERT INTO COMPETENCE (IDINFO, NOM) VALUES ('CCNA1');
INSERT INTO COMPETENCE (IDINFO, NIVEAU) VALUES ('3.5/5');
INSERT INTO COMPETENCE (IDINFO, DOMAINE) VALUES ('RESEAUX');
);

(SELECT INFOSPERSONNELLES.ID
   FROM INFOSPERSONNELLES
   WHERE ID = '1'
   
INSERT INTO COMPETENCE (IDINFO, NOM) VALUES ('JAVASCRIPT');
INSERT INTO COMPETENCE (IDINFO, NIVEAU) VALUES ('2.5/5');
INSERT INTO COMPETENCE (IDINFO, DOMAINE) VALUES ('DEVELOPPEMENT WEB');
);
 
 
CREATE TABLE IF NOT EXISTS EXPERIENCESPROFESIONNELLES(
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
NOM VARCHAR(50) NOT NULL,
DATEDEBUT DATE,
DUREEJOUR DECIMAL NOT NULL,
IDSTRUCTURES SMALLINT UNSIGNED NOT NULL,
CONSTRAINT experience_pk PRIMARY KEY(ID),
CONSTRAINT EXPERIENCESPROFESIONNELLES_fk_STRUCTURE FOREIGN KEY(IDSTRUCTURES) REFERENCES STRUCTURES(ID)
)ENGINE = InnoDB;

  (SELECT STRUCTURES.ID
   FROM STRUCTURES
   WHERE ID = '1'

INSERT INTO EXPERIENCESPROFESIONNELLES(IDSTRUCTURES, NOM) VALUES ('INTERIM PROMAN');
INSERT INTO EXPERIENCESPROFESIONNELLES(IDSTRUCTURES, DATEDEBUT) VALUES ('2017-02/15');
INSERT INTO EXPERIENCESPROFESIONNELLES(IDSTRUCTURES, DUREEJOUR) VALUES ('300');
);

(SELECT STRUCTURES.ID
   FROM STRUCTURES
   WHERE ID = '1'
   
INSERT INTO EXPERIENCESPROFESIONNELLES(IDSTRUCTURES, NOM) VALUES ('INTERIM ADECCO');
INSERT INTO EXPERIENCESPROFESIONNELLES(IDSTRUCTURES, DATEDEBUT) VALUES ('2018-01-15');
INSERT INTO EXPERIENCESPROFESIONNELLES(IDSTRUCTURES, DUREEJOUR) VALUES ('240');
);  
  

CREATE TABLE IF NOT EXISTS CENTREINTERETS(
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
NOM VARCHAR(60) NOT NULL,
IDINFOSPERSONNELLES SMALLINT UNSIGNED NOT NULL,
CONSTRAINT CENTREINTERETS_pk PRIMARY KEY(ID),
CONSTRAINT CENTREINTERET_fk_cv FOREIGN KEY(IDINFOSPERSONNELLES) REFERENCES INFOSPERSONNELLES(ID)
)ENGINE = InnoDB;

INSERT INTO STRUCTURES(NOM) VALUES ('INFORMATIQUE');


CREATE TABLE IF NOT EXISTS FORMULAIRE(
CONSTRAINT FORMULAIRE_pk PRIMARY KEY(ID)
ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
NOM VARCHAR(50) NOT NULL,
MAIL VARCHAR(50) NOT NULL,
TEXTE VARCHAR(250) NOT NULL,
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS COMPETENCE_FORMATION(
IDCOMPETENCE SMALLINT UNSIGNED NOT NULL,
IDFORMATION SMALLINT UNSIGNED NOT NULL,
CONSTRAINT COMPETENCE_FORMATION_pk PRIMARY KEY (IDFORMATION, IDCOMPETENCE),
CONSTRAINT COMPETENCE_FORMATION_idforma FOREIGN KEY(IDFORMATION) REFERENCES FORMATION(ID),
CONSTRAINT COMPETENCE_FORMATION_idcomp FOREIGN KEY(IDCOMPETENCE) REFERENCES COMPETENCE(ID)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS COMPETENCE_EXPERIENCESPROFESIONNELLES(
IDEXPERIENCESPROFESIONNELLES SMALLINT UNSIGNED NOT NULL,
IDCOMPETENCE SMALLINT UNSIGNED NOT NULL,
CONSTRAINT COMPETENCE_EXPERIENCESPROFESIONNELLES_pk PRIMARY KEY (IDEXPERIENCESPROFESIONNELLES, IDCOMPETENCE),
CONSTRAINT COMPETENCE_EXPERIENCESPROFESIONNELLES_idforma FOREIGN KEY(IDEXPERIENCESPROFESIONNELLES) REFERENCES EXPERIENCESPROFESIONNELLES(ID),
CONSTRAINT COMPETENCE_EXPERIENCESPROFESIONNELLES_idexp FOREIGN KEY(IDCOMPETENCE) REFERENCES COMPETENCE(ID)
)ENGINE = InnoDB;









