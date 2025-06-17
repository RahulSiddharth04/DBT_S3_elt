
with raw_tags as (
    select * from MOVIELENS.RAW.RAW_TAGS 
)
select 
	USERID as user_id,
	MOVIEID as movie_id,
	TAG,
	TO_TIMESTAMP_LTZ(TIMESTAMP) AS RATING_TIMESTAMP
FROM RAW_TAGS