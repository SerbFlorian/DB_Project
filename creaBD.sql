CREATE DATABASE BD1;

USE BD1;

CREATE TABLE paisos(
nom VARCHAR(15) NOT NULL, 
pot_desenv CHAR(1) NOT NULL,
tractat_signat CHAR(1),
CONSTRAINT PK_paisos PRIMARY KEY (nom),
CONSTRAINT CHK_pot_desenv_paisos CHECK (pot_desenv='S' OR pot_desenv='N'),
CONSTRAINT CHK_tractat_signat_paisos CHECK (tractat_signat='S' OR tractat_signat='N')
) engine=innodb;
CREATE TABLE laboratoris(
codi INT(3) NOT NULL,
nom VARCHAR(15) NOT NULL,
pais VARCHAR(15) NOT NULL, 
CONSTRAINT PK_laboratoris PRIMARY KEY(codi),
CONSTRAINT FK_laboratoris_paisos FOREIGN KEY (pais) REFERENCES PAISOS(nom)
) engine=innodb;

CREATE TABLE zones_biocontencio(
codi INT(3) NOT NULL,
codiLab INT(3) NOT NULL,
nivell CHAR(1) NOT NULL,
responsable INT,
CONSTRAINT PK_zones PRIMARY KEY(codi, codiLab),
CONSTRAINT FK_zones_laboratoris  FOREIGN KEY (codiLab) REFERENCES LABORATORIS(codi),
CONSTRAINT CHK_nivell_zones CHECK (nivell='A' OR nivell='M' OR nivell='B')
) engine=innodb;

CREATE TABLE armes_biologiques(
nom VARCHAR(15) NOT NULL,
data DATE NOT NULL, 
potencial INT(2) NOT NULL,
zona INT(3)  NOT NULL,
lab INT(3)  NOT NULL,
CONSTRAINT PK_armes PRIMARY KEY (nom),
CONSTRAINT FK_armes_zones FOREIGN KEY (zona, lab) REFERENCES ZONES_BIOCONTENCIO(codi, codiLab),
CONSTRAINT CHK_potencial_armes CHECK (potencial BETWEEN 1 AND 10)
) engine=innodb;



CREATE TABLE empleats(
num_pass INT NOT NULL,
nom VARCHAR(15) NOT NULL,
CONSTRAINT PK_empleats PRIMARY KEY (num_pass)
) engine=innodb;

CREATE TABLE ordinaris(
num_pass INT NOT NULL,
CONSTRAINT PK_ordinaris PRIMARY KEY (num_pass),
CONSTRAINT FK_ordinaris_empleats FOREIGN KEY (num_pass) REFERENCES EMPLEATS(num_pass)
) engine=innodb;

CREATE TABLE qualificats(
num_pass INT NOT NULL,
titulacio VARCHAR(50) NOT NULL,
zona_assignada INT(3) NOT NULL,
lab INT(3) NOT NULL,
CONSTRAINT PK_qualificats PRIMARY KEY (num_pass),
CONSTRAINT FK_qualificats_empleats FOREIGN KEY (num_pass) REFERENCES EMPLEATS(num_pass),
CONSTRAINT FK_qualificats_zones FOREIGN KEY (zona_assignada, lab) REFERENCES ZONES_BIOCONTENCIO(codi, codiLab)
) engine=innodb;

CREATE TABLE assignacions(
data DATE NOT NULL,
empl_ord INT NOT NULL,
zona INT(3)  NOT NULL,
lab INT(3)  NOT NULL,
data_fi DATE,
CONSTRAINT PK_assignacions PRIMARY KEY(data, empl_ord),
CONSTRAINT FK_assignacions_ordinaris FOREIGN KEY (empl_ord) REFERENCES ORDINARIS(num_pass),
CONSTRAINT FK_assignacions_zones FOREIGN KEY (zona, lab) REFERENCES ZONES_BIOCONTENCIO(codi, codiLab)
) engine=innodb;

ALTER TABLE zones_biocontencio 
ADD CONSTRAINT FK_responsables_zones 
FOREIGN KEY (responsable) 
REFERENCES qualificats(num_pass);
