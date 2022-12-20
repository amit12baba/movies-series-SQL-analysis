SELECT
	count(title) AS tv_series,
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
		series_or_movie = 'Series') AS genre_by_series
GROUP BY
	genre,
	series_or_movie
ORDER BY
	tv_series desc;
