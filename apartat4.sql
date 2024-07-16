SELECT DISTINCT empleats.nom
FROM empleats
INNER JOIN ordinaris
	ON ordinaris.num_pass = empleats.num_pass
INNER JOIN assignacions
	ON assignacions.empl_ord = ordinaris.num_pass
WHERE NOT EXISTS (
    SELECT ordinaris.num_pass 
    FROM ordinaris
    INNER JOIN zones_biocontencio
		ON assignacions.zona = zones_biocontencio.codi
    WHERE zones_biocontencio.nivell = 'A'
);
