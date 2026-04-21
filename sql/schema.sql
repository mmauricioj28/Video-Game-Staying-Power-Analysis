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
