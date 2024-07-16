INSERT INTO paisos(nom, pot_desenv, tractat_signat)
VALUES('espanya', 'S', 'S'), 
('finlandia', 'N', 'S'), 
('alemania', 'N', 'N'), 
('italia', 'S', 'N'),
('rumania', 'S', 'S'), 
('andorra', 'S', 'S');

 
INSERT INTO laboratoris(codi, nom, pais)
VALUES(100, 'BCN-magno', 'espanya'), 
(101, 'MUN-nenuco', 'alemania'),
(102, 'AND-vida', 'andorra'), 
(103, 'BCN-XXX', 'espanya'), 
(200, 'BUC-dacia', 'rumania'),
(201, 'HEL-johnson', 'finlandia'), 
(202, 'ROM-pisto', 'italia'), 
(203, 'TAM-cell', 'finlandia');

 
INSERT INTO zones_biocontencio(codi, codiLab, nivell)
VALUES(100, 102, 'B'), 
(101, 101, 'A'), 
(102, 203, 'A'), 
(103, 100, 'B'),
(200, 202, 'A'), 
(201, 103, 'M'), 
(202, 200, 'M'), 
(203, 201, 'B');

 
INSERT INTO armes_biologiques(nom, data, potencial, zona, lab)
VALUES('Ántrax', '2000-12-09', 3, 100, 102), 
('Tularemia', '2017-11-30', 6, 101, 101),
('Botulismo', '2009-01-10', 4, 102, 203), 
('Viruela', '2014-10-04', 1, 103, 100),
('Virus del ébola', '2007-09-04', 9, 200, 202), 
('Peste', '2016-07-15', 5, 201, 103),
('Bunyavirus', '2014-12-09', 4, 202, 200), 
('Cólera', '2017-02-15', 2, 203, 201),
('COVID-19', '2021-01-30', 7, 100, 102), 
('mathipo', '2022-05-21', 9, 201, 103);
 
INSERT INTO empleats(num_pass, nom)
VALUES(1, 'Pepe Ciruela'), 
(2, 'Juan Grano'), 
(3, 'Pedro Pica'), 
(4, 'Carlos Fernandez'), 
(5, 'Ivan Garcia'), 
(6, 'Jack Diamon'),
(7, 'Gustabo Herrera'), 
(8, 'Ruben Jimenez'), 
(9, 'Florian Serb'), 
(10, 'Adria Artunyedo'), 
(11, 'Ricard Ferguson'), 
(12, 'Angela Patric'),
(13, 'Paula Sancho'), 
(14, 'Jordi Gomez'), 
(15, 'Sergio Hernandez'), 
(16, 'David Ferrero'), 
(17, 'Xavier Romeu'), 
(18, 'Sofia Bernaltes'), 
(19, 'Carla Montanyes'),
(20, 'Maria Lago'), 
(21, 'Marco Polo'), 
(22, 'Josep Trujillo'), 
(23, 'Santi Macdon'), 
(24, 'Victor Serpin'), 
(25, 'Cristian Hiust'), 
(26, 'Marc Gavilan'),
(27, 'Miquel Masdeu'), 
(28, 'Ana Meseguer'), 
(29, 'Nahia Rudo'), 
(30, 'Jordi Guasch'), 
(31, 'Alberto Gonzalez'), 
(32, 'Ana Anguera'), 
(33, 'Arnau Rubiales'),
(34, 'Pau Ferré'), 
(35, 'Franco Franci'), 
(36, 'Marina Dalmau'), 
(37, 'Andrea Navarro'), 
(38, 'Raquel Rudo'), 
(39, 'Didac Estrada'), 
(40, 'Pol Rodriguez');
 
INSERT INTO ordinaris(num_pass)
VALUES(4), 
(5), (9), (10), 
(14), (15), (19), 
(20), (24), (25), 
(29), (30), (34), 
(35), (39), (40);
 

INSERT INTO qualificats(num_pass, titulacio, zona_assignada, lab)
VALUES(1, 'Llicenciatura en Químic Fàrmac biòleg', 102, 203), 
(2, 'Llicenciatura en Enginyeria Química', 102, 203),
(3, 'Enginyeria química industrial', 203, 201), 
(6, 'Enginyeria química industrial', 202, 200),
(7, 'Enginyeria química industrial', 202, 200), 
(8, 'Enginyeria química', 100, 102), 
(11, 'Enginyeria química', 201, 103),
(12, 'Enginyeria química industrial', 201, 103), 
(13, 'Llicenciatura en Enginyeria Química', 200, 202),
(16, 'Llicenciatura en Químic Fàrmac biòleg', 200, 202), 
(17, 'Llicenciatura en Enginyeria Química', 200, 202),
(18, 'Enginyeria química', 200, 202), 
(21, 'Llicenciatura en Enginyeria Química', 200, 202), 
(22, 'Llicenciatura en Químic Fàrmac biòleg', 103, 100),
(23, 'Enginyeria química industrial', 103, 100), 
(26, 'Llicenciatura en Enginyeria Química', 100, 102), 
(27, 'Llicenciatura en Químic Fàrmac biòleg', 100, 102),
(28, 'Enginyeria química', 201, 103), 
(31, 'Llicenciatura en Enginyeria Química', 100, 102), 
(32, 'Llicenciatura en Químic Fàrmac biòleg', 101, 101),
(33, 'Enginyeria química', 101, 101), 
(36, 'Enginyeria química industrial', 101, 101), 
(37, 'Llicenciatura en Químic Fàrmac biòleg', 101, 101),
(38, 'Llicenciatura en Químic Fàrmac biòleg', 101, 101);
 

INSERT INTO assignacions(data, empl_ord, zona, lab, data_fi)
VALUES('2010-09-12', 4, 100, 102, '2014-01-26'), 
('2008-06-29', 5, 100, 102, '2009-07-29'), 
('2022-05-12', 9, 101, 101, NULL),
('2010-03-13', 10, 101, 101, '2019-10-10'), 
('2009-06-15', 14, 102, 203, '2017-08-26'), 
('2020-07-01', 15, 102, 203, NULL),
('2012-02-13', 19, 103, 100, '2020-12-13'), 
('2000-12-09', 20, 103, 100, '2007-03-04'), 
('2018-02-23', 24, 200, 202, NULL),
('2019-08-23', 25, 200, 202, NULL), 
('2012-03-10', 29, 201, 103, NULL), 
('2017-10-15', 30, 201, 103, '2018-03-09'),
('2018-11-25', 34, 202, 200, '2020-05-06'), 
('2016-07-25', 35, 202, 200, NULL), 
('2010-05-11', 39, 203, 201, '2015-02-27'),
('2006-10-30', 40, 203, 201, '2018-10-21'), 
('2014-01-27', 4, 200, 202, '2022-02-21'), 
('2009-07-30', 5, 103, 100, NULL),
('2019-10-11', 10, 100, 102, NULL), 
('2017-08-27', '14', 101, 101, NULL), 
('2020-12-14', 19, 102, 203, '2022-01-16'),
('2007-03-05', 20, 203, 201, NULL), 
('2018-03-10', 30, 103, 100, NULL), 
('2020-05-07', 34, 203, 201, '2022-03-27'),
('2015-02-28', 39, 103, 100, NULL), 
('2018-10-22', 40, 201, 103, '2022-04-14'), 
('2022-02-22', 4, 203, 201, NULL),
('2022-01-17', 19, 200, 202, NULL), 
('2022-03-28', 34, 201, 103, NULL), 
('2022-04-15', 40, 102, 203, NULL);
 
UPDATE zones_biocontencio SET responsable = 8 WHERE codi = 100;
UPDATE zones_biocontencio SET responsable = 32 WHERE codi = 101;
UPDATE zones_biocontencio SET responsable = 1 WHERE codi = 102;
UPDATE zones_biocontencio SET responsable = 23 WHERE codi = 103;
UPDATE zones_biocontencio SET responsable = 18 WHERE codi = 200;
UPDATE zones_biocontencio SET responsable = 28 WHERE codi = 201;
UPDATE zones_biocontencio SET responsable = 6 WHERE codi = 202;
UPDATE zones_biocontencio SET responsable = 3 WHERE codi = 203;
