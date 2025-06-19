{% snapshot snap_tags %}

{{ config(
    target_schema='snapshots',
    unique_key=['user_id','movie_id','tag'],
    strategy='timestamp',
    updated_at='rating_timestamp',
    invalid_hard_deletes=True
) }}

SELECT 
    {{ dbt_utils.generate_surrogate_key(['user_id','movie_id','tag']) }} AS raw_key,
    user_id,
    movie_id,
    tag,
    CAST(rating_timestamp AS timestamp_ntz) AS rating_timestamp
FROM {{ ref('src_tags') }}

{% endsnapshot %}
