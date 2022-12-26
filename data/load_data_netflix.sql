CREATE TABLE movies_and_series (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title character varying(106) NOT NULL,
    genre character varying(103),
    tags character varying(653),
    languages character varying(123),
    series_or_movie character varying(6) NOT NULL,
    hidden_gem_score numeric(3,1),
    country_availability character varying(321),
    runtime character varying(12),
    director character varying(196),
    writer character varying(458),
    actors character varying(105),
    view_rating character varying(9),
    imdb_score numeric(3,1),
    rotten_tomatoes_score numeric(5,1),
    metacritic_score numeric(5,1),
    awards_received numeric(5,1),
    awards_nominated_for numeric(5,1),
    boxoffice character varying(12),
    release_date date,
    netflix_release_date date NOT NULL,
    production_house character varying(458),
    netflix_link character varying(38) NOT NULL,
    imdb_link character varying(37),
    summary character varying(250),
    imdb_votes numeric(9,1),
    image character varying(305) NOT NULL,
    poster character varying(190),
    tmdb_trailer character varying(43),
    trailer_site character varying(7)
);

-- add data from CSV file, without the header row
COPY movies_and_series(title, genre, tags, languages, series_or_movie, hidden_gem_score, country_availability, runtime, director, writer, actors, view_rating, imdb_score, rotten_tomatoes_score, metacritic_score, awards_received, awards_nominated_for, boxoffice, release_date, netflix_release_date, production_house, netflix_link, imdb_link, summary, imdb_votes, image, poster, tmdb_trailer, trailer_site) FROM '/tmp/data/netflix-rotten-tomatoes-metacritic-imdb.csv' CSV HEADER;