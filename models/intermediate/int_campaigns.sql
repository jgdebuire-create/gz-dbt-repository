SELECT * FROM {{ ref("stg_Raw__adwords") }}
UNION ALL
SELECT * FROM {{ ref("stg_Raw__criteo") }}
UNION ALL
SELECT * FROM {{ ref("stg_Raw__bing") }}
UNION ALL
SELECT * FROM {{ ref("stg_Raw__facebook") }}
