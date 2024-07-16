SELECT empleats.nom, COUNT(assignacions.zona)
FROM EMPLEATS
INNER JOIN ordinaris
	ON empleats.num_pass = ordinaris.num_pass
INNER JOIN assignacions
	ON ordinaris.num_pass = assignacions.empl_ord
INNER JOIN zones_biocontencio
	ON assignacions.zona = zones_biocontencio.codi
GROUP BY empleats.nom
HAVING COUNT(assignacions.empl_ord)>(SELECT COUNT(assignacions.empl_ord)
                FROM assignacions
                INNER JOIN ordinaris
                    ON ordinaris.num_pass = assignacions.empl_ord
                INNER JOIN empleats
                    ON empleats.num_pass = ordinaris.num_pass
                INNER JOIN zones_biocontencio
                    ON assignacions.zona = zones_biocontencio.codi
                WHERE empleats.nom = 'Jordi Guasch');
