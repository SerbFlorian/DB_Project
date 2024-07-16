UPDATE zones_biocontencio 
INNER JOIN armes_biologiques
ON armes_biologiques.zona = zones_biocontencio.codi
SET nivell = 'A' 
WHERE armes_biologiques.potencial > 5;
