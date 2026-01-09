-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM observations LIMIT 10;

- MISSION 2
-- Your query here;
SELECT DISTINCT region_id FROM observations;
-- Conclusion: There are 25 unique regions.

-- MISSION 3
-- Your query here;
SELECT COUNT (DISTINCT "species_id") FROM observations;
-- Conclusion: There are 270 different species 

-- MISSION 4
-- Your query here;
SELECT COUNT (*) FROM observations
WHERE region_id = 2;
-- Conclusion: There are 228 regions(2)

-- MISSION 5
-- Your query here;
SELECT COUNT ("1998-08-08") FROM observations;
-- Conclusion: There are 500 observations from 1998-08-08.

-- MISSION 6
-- Your query here;
SELECT * FROM observations
GROUP BY region_id
ORDER BY COUNT(*) DESC
LIMIT 1;
-- Anotación: NO ENTIENDO SI EL RESULTADO ES CORRECTO

-- MISSION 7
-- Your query here;
SELECT * FROM observations
GROUP BY species_id
ORDER BY COUNT(*) DESC
LIMIT 5;

-- MISSION 8
-- Your query here;
SELECT species_id, COUNT(*) FROM observations
GROUP BY species_id
HAVING COUNT (*) < 5;

-- MISSION 9
-- Your query here;
SELECT observer, COUNT (*) FROM observations
GROUP BY observer
ORDER BY observer (DESC);

-- MISSION 10
-- Your query here;
SELECT regions.name FROM observations
JOIN regions
ON observations.region_id = regions.region_id; 

-- MISSION 11
-- Your query here;
SELECT species.scientific_name FROM observations
JOIN species
ON observations.species_id = species.species_id;

-- MISSION 12
-- Your query here;
SELECT region_id, species_id, COUNT(*) AS total_avistamientos
FROM observations
GROUP BY region_id, species_id
ORDER BY region_id ASC, total_avistamientos DESC;