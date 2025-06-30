SELECT * FROM wdbc;


SELECT count (diagnosis)
FROM wdbc
GROUP BY diagnosis;


SELECT Count(*) - count (radius_mean) 
FROM wdbc


SELECT Count(*) - count (area_mean) 
FROM wdbc


SELECT unnest
	(PERCENTILE_CONT(ARRAY [0.25,0.50,0.75]) WITHIN GROUP (ORDER BY radius_mean))
FROM wdbc


SELECT
	PERCENTILE_CONT(ARRAY [0.25,0.50,0.75]) WITHIN GROUP (ORDER BY radius_mean)
FROM wdbc


SELECT MODE() WITHIN GROUP(ORDER BY area_mean)
FROM wdbc


SELECT diagnosis,
	(ROUND (AVG(radius_mean), 2)) AS avg_radius,
	(ROUND (AVG(perimeter_mean), 2)) AS avg_perimeter,
	(ROUND (AVG(area_mean), 2)) AS avg_area
FROM wdbc
GROUP BY diagnosis;



SELECT * 
FROM wdbc
ORDER BY area_mean DESC LIMIT 5;



SELECT id_number, diagnosis
FROM wdbc
ORDER BY radius_mean ASC LIMIT 3;



SELECT *
FROM wdbc
ORDER BY radius_mean ASC LIMIT 3;



SELECT diagnosis, AVG(radius_mean) AS avg_radius, AVG(area_mean) AS avg_area
FROM wdbc
GROUP BY diagnosis



SELECT COUNT (*) 
FROM wdbc
WHERE radius_mean >
	(SELECT AVG(radius_mean) AS avg_radius 
	 FROM wdbc)


SELECT  diagnosis, avg(radius_mean) AS avg_radius, avg(texture_mean) AS avg_texture, AVG(perimeter_mean) AS avg_perimeter, 
	AVG(area_mean) AS avg_area, AVG(smoothness_mean) AS avg_smoothness, AVG(compactness_mean) AS avg_compact, 
	AVG(concavity_mean) AS avg_concavity, AVG(concave_points_mean) AS avg_concave, AVG(symmetry_mean) AS avg_symmetry,
	AVG(fractal_dimension_mean) AS avg_fractal
FROM wdbc
WHERE diagnosis = 'M'
GROUP BY diagnosis
ORDER BY diagnosis DESC LIMIT 3



SELECT 
	PERCENTILE_CONT(0.50) WITHIN GROUP(ORDER BY (perimeter_mean))
FROM wdbc
WHERE diagnosis = 'B'



SELECT id_number, diagnosis, concavity_mean
FROM wdbc
ORDER BY concavity_mean DESC LIMIT 5


SELECT count(fractal_dimension_mean) 
FROM wdbc
WHERE fractal_dimension_mean > 0.08


SELECT diagnosis, AVG(texture_mean) AS avg_texture 
FROM wdbc
GROUP BY diagnosis


SELECT 
  ROUND((SELECT COUNT (*) FROM wdbc WHERE area_worst > 1000  AND diagnosis = 'M') * 100.00 / 
  (SELECT COUNT (*) FROM wdbc WHERE area_worst > 1000), 2) 
AS perc_malignant 



SELECT diagnosis, AVG(smoothness_se) AS avg_smoothness_se, AVG(symmetry_mean) AS avg_symmetry_mean
FROM wdbc
GROUP BY diagnosis;


SELECT 
	MODE() WITHIN GROUP (ORDER BY diagnosis)
FROM wdbc
WHERE compactness_mean < 0.1;



SELECT diagnosis, PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY radius_worst)
FROM wdbc
GROUP BY diagnosis;


SELECT diagnosis, MAX(concave_points_mean), MAX(perimeter_mean), count(diagnosis)
FROM wdbc
GROUP BY diagnosis
ORDER BY MAX(concave_points_mean) DESC, MAX(perimeter_mean) DESC 

SELECT COUNT(*)
	FROM (SELECT diagnosis, texture_worst
	FROM wdbc
	GROUP BY diagnosis, texture_worst)

--What percent of all tumors fall into the top 10% of area_mean values?
SELECT 
  ROUND(
    (SELECT COUNT(*) FROM wdbc WHERE area_mean >= [your_90th_percentile_value]) * 100.0
    / 
    (SELECT COUNT(*) FROM wdbc), 
  2) AS percent_top_10_area_mean;


SELECT CORR(radius_se, perimeter_se)
FROM wdbc
