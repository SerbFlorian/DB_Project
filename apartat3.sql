SELECT DISTINCT laboratoris.codi, laboratoris.nom
FROM laboratoris, zones_biocontencio
WHERE zones_biocontencio.nivell = 'A'
ORDER BY nom ASC;
