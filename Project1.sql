CREATE DATABASE ECOMMERCE;

use ecommerce;

DESCRIBE USERS_DATA;

SELECT * FROM USERS_DATA limit 100;

SELECT COUNT(distinct(COUNTRY)),COUNT(distinct(lANGUAGE)) FROM USERS_DATA;

SELECT gender, MAX(socialNbFollowers) max_followers FROM Users_data GROUP BY gender;

SELECT COUNT(hasProfilePicture) FROM USERS_DATA WHERE hasProfilePicture = 'TRUE';

SELECT  COUNT(hasAnyApp) FROM USERS_DATA WHERE hasAnyApp = 'TRUE';

SELECT  COUNT(hasAndroidApp) FROM USERS_DATA WHERE hasAndroidApp = 'TRUE';

SELECT  COUNT(hasIosApp) FROM USERS_DATA WHERE hasIosApp = 'TRUE';

SELECT COUNTRY,count(*) productsBought FROM USERS_DATA WHERE productsBought >= 1 group by country order by productsBought desc;
-- 9
SELECT DISTINCT(COUNTRY),productsPassRate FROM USERS_DATA ORDER BY productsPassRate DESC LIMIT 10;
-- 10
SELECT language,count(*) no_of_users_for_different_language_choices FROM USERS_DATA group by language;

SELECT 'Wishlist'  choice, count(gender) Female_count  FROM users_data WHERE gender = 'F' AND productsWished >= 1 
UNION
SELECT  'Like'  choice, count(gender) Female_count FROM users_data WHERE gender = 'F' AND socialProductsLiked >= 1;

SELECT 'Seller' choice, count(gender) male_count  FROM users_data WHERE gender = 'M' AND productsSold >= 1 
UNION
SELECT  'Buyer' choice, count(gender) male_count FROM users_data WHERE gender = 'M' AND productsBought >= 1;

SELECT country, COUNT(*) AS num_buyers FROM users_data WHERE productsBought >= 1
GROUP BY country
ORDER BY num_buyers DESC LIMIT 1;

SELECT country ,productsSold from users_data where productsSold = 0 limit 10 ;

SELECT * FROM USERS_DATA ORDER BY daysSinceLastLogin ASC LIMIT 110;

SELECT gender,count(gender) FROM USERS_DATA WHERE daysSinceLastLogin = 100 and gender = 'F';

SELECT COUNTRY ,count(gender) no_of_females FROM USERS_DATA WHERE GENDER = 'F' group by country;

SELECT country ,count(*) no_of_males from users_data where gender ='M' group by country;

SELECT COUNTRY, AVG(productsSold) ,AVG(productsBought) FROM USERS_DATA WHERE GENDER ='M' GROUP BY COUNTRY;
