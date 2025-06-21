select *
from {{ ref('src_genome_score') }} s
left join {{ ref('src_links') }} l
    on s.movie_id = l.movie_id
where l.movie_id is null
