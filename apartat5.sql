SELECT laboratoris.nom, zones_biocontencio.codi
FROM laboratoris
INNER JOIN zones_biocontencio
	ON laboratoris.codi = zones_biocontencio.codiLab
INNER JOIN qualificats
	ON zones_biocontencio.codi = qualificats.zona_assignada
GROUP BY qualificats.zona_assignada
HAVING COUNT(qualificats.zona_assignada) > 3
ORDER BY laboratoris.nom;
