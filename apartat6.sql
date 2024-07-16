SELECT DISTINCT ordinaris.num_pass 
FROM ordinaris
INNER JOIN assignacions
	ON ordinaris.num_pass = assignacions.empl_ord
INNER JOIN laboratoris
	ON assignacions.lab = laboratoris.codi
INNER JOIN zones_biocontencio
	ON laboratoris.codi = zones_biocontencio.codiLab
WHERE EXISTS (
	SELECT zones_biocontencio.codi FROM zones_biocontencio
    WHERE laboratoris.nom = 'BCN-XXX'
	);
