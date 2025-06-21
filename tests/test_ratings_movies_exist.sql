select *
from {{ ref('src_rating') }} r
left join {{ ref('src_links') }} l
    on r.movie_id = l.movie_id
where l.movie_id is null
