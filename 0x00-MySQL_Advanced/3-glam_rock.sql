-- Glam rock style
-- rank by longevity
SELECT band_name, (IFNULL(split,'2022') - formed) as lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY band_name;