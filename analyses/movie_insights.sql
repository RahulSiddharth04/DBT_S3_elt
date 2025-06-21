-- analyses/movie_insights.sql
-- This analysis gives you:
-- 1. The average rating per movie
-- 2. The count of genome tags per movie
-- 3. Final combined view of movies with their average ratings and tag counts

with ratings as (
    select
        movie_id,
        avg(rating) as avg_rating,
        count(*) as rating_count
    from {{ ref('src_rating') }}
    group by movie_id
),

tags as (
    select
        movie_id,
        count(distinct tag_id) as tag_count
    from {{ ref('src_genome_score') }}
    group by movie_id
)

select
    r.movie_id,
    r.avg_rating,
    r.rating_count,
    t.tag_count
from ratings r
left join tags t
    on r.movie_id = t.movie_id
order by avg_rating desc
