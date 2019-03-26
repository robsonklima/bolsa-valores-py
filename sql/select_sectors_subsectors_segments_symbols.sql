SELECT 			symbols.name, symbols.symbol, symbols.segment, sectors.name sector, subsectors.name subsector, segments.name segment
FROM				segments
INNER JOIN		subsectors ON subsectors.subsector_id = segments.subsector_id
INNER JOIN		sectors ON sectors.sector_id = subsectors.sector_id
INNER JOIN		symbols ON symbols.segment_id = segments.segment_id
#WHERE			segments.name = 'Serviços Financeiros Diversos'
ORDER BY 		sectors.name;