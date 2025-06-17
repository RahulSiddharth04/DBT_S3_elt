
with raw_ratings as (
    select * from MOVIELENS.RAW.RAW_RATINGS 
)
select 
	USERID as user_id,
	MOVIEID as movie_id,
	RATING,
	TO_TIMESTAMP_LTZ(TIMESTAMP) AS RATING_TIMESTAMP
FROM RAW_RATINGS