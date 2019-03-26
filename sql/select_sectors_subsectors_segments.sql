SELECT 			sectors.name, subsectors.name, segments.name
FROM				segments
INNER JOIN		subsectors ON subsectors.subsector_id = segments.subsector_id
INNER JOIN		sectors ON sectors.sector_id = subsectors.sector_id
#WHERE			segments.name = 'Serviços Financeiros Diversos'
ORDER BY 		sectors.name;