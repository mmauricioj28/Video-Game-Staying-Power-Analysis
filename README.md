# Video Game Staying Power Analysis

This project analyzes what gives video games long-term “staying power.” Staying power means a game’s ability to remain active and relevant after release. The project uses Steam data, including game metadata, reviews, current player counts, update history, and pricing, to study which factors are connected to long-term player engagement.

The data was collected from Steam APIs, including:
- Steam Store app details API
- Steam review summary endpoint
- Steam current player count API
- Steam news/update API

Video-Game-Staying-Power-Analysis/
│
├── data/
│ ├── raw/
│ │ ├── app_ids_large_seed.txt
│ │ ├── steam_metadata_batch1.csv
│ │ ├── steam_reviews_batch1.csv
│ │ ├── steam_engagement_batch1.csv
│ │ └── steam_content_batch1.csv
│ │
│ ├── cleaned/
│ │ ├── steam_metadata_released_clean.csv
│ │ ├── steam_metadata_all_clean.csv
│ │ ├── steam_reviews_clean.csv
│ │ ├── steam_engagement_clean.csv
│ │ └── steam_content_clean.csv
│ │
│ └── final/
│ ├── base_dataset.csv
│ ├── engagement_features.csv
│ ├── review_features.csv
│ ├── support_features.csv
│ ├── money_features.csv
│ └── modeling_dataset.csv
│
├── database/
│ └── steam_games.db
│
├── notebooks/
│ ├── 01_data_collection.ipynb
│ ├── 02_data_collection.ipynb
│ ├── 03_data_collection.ipynb
│ ├── 04_data_collection.ipynb
│ ├── 01_data_clean.ipynb
│ ├── 01_data_SQL.ipynb
│ ├── 02_data_SQL.ipynb
│ ├── 03_data_SQL.ipynb
│ ├── 04_data_SQL.ipynb
│ ├── 04_merge.ipynb
│ ├── 05_analysis.ipynb
│ ├── 06_model_predictions.ipynb
│ └── test.ipynb
│
├── sql/
│ └── schema.sql
│
├── requirements.txt
└── README.md 


## Data Pipeline

```markdown
Run these notebooks in these orders

1. 01_data_collection
2. 01_data_clean
3. 01_data_SQL
4. 02_data_collection
5. 02_data_SQL
6. repeat with 3 and 4 
7. 04_merge
8. 05_analysis
9. 06_model_predictions


## Project Order

```markdown
The project follows this process:

1. Collect Steam game metadata
2. Collect review data
3. Collect current player count data
4. Collect update and patch note data
5. Clean the raw datasets
6. Load cleaned data into SQLite tables
7. Join tables into one final base dataset
8. Create new analysis features
9. Build graphs
10. Train prediction models
