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
		movies_netflix_kaggle
	WHERE
		series_or_movie = 'Movie') AS genre_by_movies
GROUP BY
	genre,
	series_or_movie
ORDER BY
	movies DESC;
