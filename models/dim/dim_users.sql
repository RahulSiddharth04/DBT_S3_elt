WITH ratings AS (
    SELECT user_id FROM {{ ref('src_rating') }}
),
tags AS (
    SELECT user_id FROM {{ ref('src_tags') }}
)

SELECT DISTINCT user_id
FROM (
    SELECT user_id FROM ratings
    UNION
    SELECT user_id FROM tags
)
