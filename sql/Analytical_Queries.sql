-- Top 10 Games by Global Sales

SELECT
    Name,
    SUM(Global_Sales) AS total_global_sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
GROUP BY
    Name
ORDER BY
    total_global_sales DESC
LIMIT 10;

-- Total Sales Over Time

SELECT
    Year,
    SUM(Global_Sales) AS total_global_sales_per_year
FROM
    `pixelpulse_games.video_game_sales_cleaned`
WHERE
    Year IS NOT NULL -- Exclude rows where Year is NULL after cleaning
GROUP BY
    Year
ORDER BY
    Year ASC;

-- Most Popular Genres

SELECT
    Genre,
    SUM(Global_Sales) AS total_global_sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
GROUP BY
    Genre
ORDER BY
    total_global_sales DESC;

-- Top Performing Platforms

SELECT
    Platform,
    SUM(Global_Sales) AS total_global_sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
GROUP BY
    Platform
ORDER BY
    total_global_sales DESC;

-- Top 5 Games in North America

SELECT
    Name,
    Platform,
    NA_Sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
ORDER BY
    NA_Sales DESC
LIMIT 5;

-- Top 5 Games in Europe

SELECT
    Name,
    Platform,
    EU_Sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
ORDER BY
    EU_Sales DESC
LIMIT 5;

-- Top 5 Games in Japan

SELECT
    Name,
    Platform,
    JP_Sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
ORDER BY
    JP_Sales DESC
LIMIT 5;

-- op 5 Games in Other Markets

SELECT
    Name,
    Other_Sales
FROM
    `pixelpulse_games.video_game_sales_cleaned`
ORDER BY
    Other_Sales DESC
LIMIT 5;