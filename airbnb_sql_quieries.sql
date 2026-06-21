#Room Type Distribution
SELECT
    room_type,
    COUNT(*) AS total_listings
FROM airbnb_listings
GROUP BY room_type
ORDER BY total_listings DESC;

#Top 10 Neighborhoods by Listings
SELECT
    neighbourhood_cleansed,
    COUNT(*) AS total_listings
FROM airbnb_listings
GROUP BY neighbourhood_cleansed
ORDER BY total_listings DESC
LIMIT 10;

#Superhost Performance
SELECT
    host_is_superhost,
    ROUND(AVG(number_of_reviews),2) AS avg_reviews
FROM airbnb_listings
GROUP BY host_is_superhost;

#Guest Satisfaction
SELECT
    ROUND(AVG(review_scores_rating),2) AS avg_rating,
    ROUND(AVG(review_scores_cleanliness),2) AS avg_cleanliness,
    ROUND(AVG(review_scores_communication),2) AS avg_communication
FROM airbnb_listings;

#Most Reviewed properties
SELECT name,
       number_of_reviews
FROM airbnb_listings
ORDER BY number_of_reviews DESC
LIMIT 10;


#Average Reviews by Room Type
SELECT room_type,
       ROUND(AVG(number_of_reviews),2) AS avg_reviews
FROM airbnb_listings
GROUP BY room_type;


#Top Hosts by Listings
SELECT host_name,
       COUNT(*) AS total_listings
FROM airbnb_listings
GROUP BY host_name
ORDER BY total_listings DESC
LIMIT 10;

