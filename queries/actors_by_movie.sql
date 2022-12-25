-- Which are the actors that have played more movies?
SELECT
	actors,
	count(series_or_movie) AS movies
FROM (
	SELECT
		unnest(string_to_array(actors, ', ')) AS actors,
		series_or_movie
	FROM
		movies_and_series
	WHERE
		series_or_movie = 'Movie') AS movies_by_actors
GROUP BY
	actors
ORDER BY
	movies DESC
LIMIT 10;
