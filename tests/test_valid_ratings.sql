select *
from {{ ref('src_rating') }}
where rating < 0 or rating > 5
