select *
from {{ ref('src_genome_score') }} s
left join {{ ref('src_genome_tags') }} t
    on s.tag_id = t.tag_id
where t.tag_id is null
