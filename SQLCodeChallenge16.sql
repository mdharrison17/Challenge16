--get total count of reviews
select count(review_id)
from vine_table

--get a count of vine reviews
select count(review_id)
from vine_table
where vine = 'Y'

--get a count of non vine reviews
select count(review_id)
from vine_table
where vine = 'N'

-- get total count of 5 star reviews
select count(review_id)
from vine_table
where star_rating = 5

--get count of reviews that are 5 star and vine
select count(review_id)
from vine_table
where star_rating = 5
and vine = 'Y'

--get count of reviews that are 5 star and not vine
select count(review_id)
from vine_table
where star_rating = 5
and vine = 'N'

--average rating for all reviews
select round(avg(star_rating),2)
from vine_table

--average rating for vine reviews
select round(avg(star_rating),2)
from vine_table
where vine = 'Y'

--average rating for vine reviews
select round(avg(star_rating),2)
from vine_table
where vine = 'N'


--total helpful votes for vine
select sum(helpful_votes)
from vine_table
where helpful_votes > 0
and vine = 'Y'

--total helpful votes for non vine
select sum(helpful_votes)
from vine_table
where helpful_votes > 0
and vine = 'N'

--count number of each star vote for vine
SELECT 
    star_rating,
    COUNT(*) as count
FROM vine_table
where vine = 'Y'
GROUP BY star_rating
ORDER BY COUNT(*) DESC

--count number of each star vote for non vine
SELECT 
    star_rating,
    COUNT(*) as count
FROM vine_table
where vine = 'N'
GROUP BY star_rating
ORDER BY COUNT(*) DESC

