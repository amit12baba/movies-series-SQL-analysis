-- What are the most popular language played in series?
SELECT
	count(title) AS title,
	languages,
	series_or_movie
FROM (
	SELECT
		title,
		unnest(string_to_array(languages, ', ')) languages,
		series_or_movie
	FROM
		movies_and_series
	WHERE
		series_or_movie = 'Series') AS lang_by_series
GROUP BY
	languages,
	series_or_movie
ORDER BY
	title DESC;
