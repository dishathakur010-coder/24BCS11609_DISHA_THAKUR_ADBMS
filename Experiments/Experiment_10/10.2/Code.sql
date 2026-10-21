https://www.codechef.com/viewsolution/1377559366
SELECT f_name,f_cost,f_type FROM food WHERE (SELECT AVG(CAST(f_rating AS REAL)) FROM ratings WHERE food.f_id=ratings.f_id)>=4;
