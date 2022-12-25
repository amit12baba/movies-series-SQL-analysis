-- Top imdb score series in Israel with awared nominated and recieved
SELECT
	*
FROM (
	SELECT
		title,
		awards_nominated_for,
		awards_received,
		imdb_score,
		unnest(string_to_array(country_availability, ',')) AS country_availability
	FROM
		movies_and_series
	WHERE
		awards_nominated_for IS NOT NULL
		AND awards_received IS NOT NULL
		AND series_or_movie = 'Series'
		AND (imdb_score BETWEEN 7.5 AND 9)
	ORDER BY
		imdb_score DESC) AS top_series
WHERE
	country_availability = 'Israel'
