-- How many movies Brad Pitt have?
SELECT
	*
FROM (
	SELECT
		title,
		unnest(string_to_array(actors, ', ')) AS actor,
		release_date
	FROM
		movies_and_series) as actor_title
	WHERE
		actor= 'Brad Pitt';