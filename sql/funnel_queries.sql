-- Query 1: Funnel user count
SELECT 
    PageType,
    COUNT(DISTINCT UserID) AS unique_users
FROM df
WHERE PageType IN ('home','product_page','cart','checkout','confirmation')
GROUP BY PageType;

-- Query 2: Drop-off analysis
SELECT
    PageType,
    COUNT(DISTINCT UserID) AS users_reached,
    1872 - COUNT(DISTINCT UserID) AS users_lost,
    ROUND((1872 - COUNT(DISTINCT UserID)) * 100.0 / 1872, 2) AS pct_lost_from_start
FROM df
WHERE PageType IN ('home','product_page','cart','checkout','confirmation')
GROUP BY PageType
ORDER BY pct_lost_from_start;

-- Query 3: Conversion by device type
SELECT
    DeviceType,
    COUNT(DISTINCT CASE WHEN PageType = 'home' THEN UserID END) AS home_users,
    COUNT(DISTINCT CASE WHEN PageType = 'confirmation' THEN UserID END) AS converted_users,
    ROUND(COUNT(DISTINCT CASE WHEN PageType = 'confirmation' THEN UserID END) * 100.0 /
          COUNT(DISTINCT CASE WHEN PageType = 'home' THEN UserID END), 2) AS conversion_rate
FROM df
GROUP BY DeviceType
ORDER BY conversion_rate DESC;

-- Query 4: Conversion by referral source
SELECT
    ReferralSource,
    COUNT(DISTINCT CASE WHEN PageType = 'home' THEN UserID END) AS home_users,
    COUNT(DISTINCT CASE WHEN PageType = 'confirmation' THEN UserID END) AS converted_users,
    ROUND(COUNT(DISTINCT CASE WHEN PageType = 'confirmation' THEN UserID END) * 100.0 /
          COUNT(DISTINCT CASE WHEN PageType = 'home' THEN UserID END), 2) AS conversion_rate
FROM df
GROUP BY ReferralSource
ORDER BY conversion_rate DESC;

-- Query 5: Conversion by country
SELECT
    Country,
    COUNT(DISTINCT CASE WHEN PageType = 'home' THEN UserID END) AS total_users,
    COUNT(DISTINCT CASE WHEN PageType = 'confirmation' THEN UserID END) AS converted_users,
    ROUND(COUNT(DISTINCT CASE WHEN PageType = 'confirmation' THEN UserID END) * 100.0 /
          COUNT(DISTINCT CASE WHEN PageType = 'home' THEN UserID END), 2) AS conversion_rate
FROM df
GROUP BY Country
ORDER BY conversion_rate DESC;
