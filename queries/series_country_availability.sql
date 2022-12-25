-- Which countries have a larger series availability?
SELECT
	country_availability,
	count(series_or_movie) AS series
FROM (
	SELECT
		unnest(string_to_array(country_availability, ',')) AS country_availability,
		series_or_movie
	FROM
		movies_and_series
	WHERE
		series_or_movie = 'Series') AS series_by_country
GROUP BY
	country_availability
ORDER BY
	series DESC;
