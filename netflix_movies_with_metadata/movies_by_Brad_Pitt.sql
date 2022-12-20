SELECT
	*
FROM (
	SELECT
		title,
		unnest(string_to_array(actors, ', ')) AS actor,
		release_date
	FROM
		movies_netflix_kaggle) as actor_title
	WHERE
		actor= 'Brad Pitt';