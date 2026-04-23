CREATE TABLE IF NOT EXISTS games_metadata (
    app_id INTEGER PRIMARY KEY,
    name TEXT,
    type TEXT,
    is_free BOOLEAN,
    release_date TEXT,
    coming_soon BOOLEAN,
    price_usd REAL,
    developers TEXT,
    publishers TEXT,
    genres TEXT,
    categories TEXT,
    dlc_count INTEGER,
    required_age TEXT,
    header_image TEXT,
    website TEXT
);


CREATE TABLE IF NOT EXISTS reviews (
    app_id INTEGER PRIMARY KEY,
    review_score_desc TEXT,
    review_score REAL,
    total_positive INTEGER,
    total_negative INTEGER,
    total_reviews INTEGER,
    positive_ratio REAL
);

CREATE TABLE IF NOT EXISTS engagement (
    app_id INTEGER PRIMARY KEY,
    current_players INTEGER
);