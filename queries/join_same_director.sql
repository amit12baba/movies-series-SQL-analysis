-- how many movies show in netflix and how many movies show in disney by the same director?
WITH netflix AS (
	SELECT
		netflix_director,
		count(netflix_movies) AS count_netflix_movies
	FROM (
		SELECT
			movies_and_series.title AS netflix_movies,
			movies_and_series.director AS netflix_director,
			disney_plus_movies_and_series.director AS disney_director,
			disney_plus_movies_and_series.title AS disney_movies,
			movies_and_series.series_or_movie,
			disney_plus_movies_and_series.type
		FROM
			movies_and_series
		FULL OUTER JOIN disney_plus_movies_and_series ON movies_and_series.director = disney_plus_movies_and_series.director
		AND movies_and_series.title = disney_plus_movies_and_series.title) AS table_1_director
WHERE
	netflix_director IS NOT NULL
	AND netflix_movies IS NOT NULL
	AND disney_movies IS NULL
	AND disney_director IS NULL
GROUP BY
	netflix_director
),
disney AS (
	SELECT
		disney_director,
		count(disney_movies) AS count_disney_movies
	FROM (
		SELECT
			movies_and_series.title AS netflix_movies,
			movies_and_series.director AS netflix_director,
			disney_plus_movies_and_series.director AS disney_director,
			disney_plus_movies_and_series.title AS disney_movies,
			movies_and_series.series_or_movie,
			disney_plus_movies_and_series.type
		FROM
			movies_and_series
		FULL OUTER JOIN disney_plus_movies_and_series ON movies_and_series.director = disney_plus_movies_and_series.director
		AND movies_and_series.title = disney_plus_movies_and_series.title) AS table_2_director
WHERE
	netflix_director IS NULL
	AND netflix_movies IS NULL
	AND disney_movies IS NOT NULL
	AND disney_director IS NOT NULL
GROUP BY
	disney_director
)
SELECT
	*
FROM
	netflix
	INNER JOIN disney ON netflix.netflix_director = disney.disney_director;
