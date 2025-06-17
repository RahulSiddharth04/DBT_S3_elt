
with raw_tags as (
    select * from MOVIELENS.RAW.RAW_GENOME_TAGS 
)
select 
	tagid as tag_id,
    tag
	
FROM raw_genome_tags