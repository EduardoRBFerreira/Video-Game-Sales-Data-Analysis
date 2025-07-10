CREATE OR REPLACE TABLE `pixelpulse_games.video_game_sales_cleaned` AS
SELECT
    Name,
    Platform,
    SAFE_CAST(Year AS INT64) AS Year, -- Convert 'N/A' to NULL and cast to INT64
    Genre,
    Publisher,
    NA_Sales,
    EU_Sales,
    JP_Sales,
    Other_Sales,
    Global_Sales
FROM
    `pixelpulse_games.video_game_sales`;