
with raw_tags as (
    select * from MOVIELENS.RAW.RAW_GENOME_SCORES 
)
select 
    movieId as movie_id,
	tagid as tag_id,
    relevance
	
FROM raw_genome_scores