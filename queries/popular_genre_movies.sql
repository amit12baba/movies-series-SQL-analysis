-- Which are the most popular genre in movies?
SELECT
	count(title) AS movies,
	genre,
	series_or_movie
FROM (
	SELECT
		title,
		unnest(string_to_array(genre, ', ')) genre,
		series_or_movie
	FROM
		movies_and_series
	WHERE
		series_or_movie = 'Movie') AS genre_by_movies
GROUP BY
	genre,
	series_or_movie
ORDER BY
	movies DESC;
