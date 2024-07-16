CREATE VIEW VW_zona_empleats 
AS SELECT DISTINCT empleats.nom, zones_biocontencio.codi 
FROM empleats
INNER JOIN ordinaris	
	ON empleats.num_pass = ordinaris.num_pass
INNER JOIN assignacions
	ON ordinaris.num_pass = assignacions.empl_ord
INNER JOIN zones_biocontencio
	ON assignacions.zona = zones_biocontencio.codi
WHERE assignacions.data_fi IS NULL
UNION
SELECT DISTINCT empleats.nom, zones_biocontencio.codi
FROM empleats
INNER JOIN qualificats
	ON empleats.num_pass = qualificats.num_pass
INNER JOIN zones_biocontencio
	ON qualificats.num_pass = zones_biocontencio.responsable;


SELECT * FROM VW_zona_empleats;
