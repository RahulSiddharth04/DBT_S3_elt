
with raw_tags as (
    select * from MOVIELENS.RAW.RAW_LINKS 
)
select 
	MOVIEID as movie_id,
	imdbid as imdb_id,
	tmdbid as tmdb_id,
	
FROM RAW_LINKS