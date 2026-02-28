---walmart Sql analysis through postgres

select * from walmart;


-- 1. Analyze Payment Methods and Sales


select payment_method,count(*) as items_sold

from walmart group by payment_method;


-- 2. Identify the Highest-Rated Category in Each Branch


 with category_rank as(select branch ,category, 
 round(avg(rating)::numeric,2) as avg_rating,
  rank() over(partition by branch order by round(avg(rating)::numeric,2) desc) as ranks
 from walmart group by branch,category)
 
 select * from category_rank where ranks=1;

 -- 3. Determine the Busiest Day for Each Branch

 
 with bussiest_day as
    (select branch,day_of_week, count(*)as total_sales,
     rank() over (partition by branch order by count(*) desc) as sales_rank
     from walmart group by branch,day_of_week)
	 
 select * from bussiest_day where sales_rank=1


 -- 4. Calculate Total Quantity Sold by Payment Method

 
select payment_method,sum(quantity)as total_quantity_sold,
count(*) as total_transcations, sum(total)
as total_sales_amount
from walmart group by payment_method;



-- 5. Analyze Category Ratings by City


select city,category,round(avg(rating)::numeric,1)as avg_rating,
max(rating)as max_rating,
min(rating)as min_rating 
from walmart group by city,category;



-- 6. Calculate Total Profit by Category


select category,round(sum(total)::numeric,2)as total_revenue,
round(sum(total*profit_margin)::numeric,2)as total_profit,
rank() over(order by round(sum(total*profit_margin)::numeric,2) desc) as rank_
from walmart group by category;



-- 7. Determine the Most Common Payment Method per Branch


with payment_rank as(select branch,payment_method,count(*)as total,
rank() over (partition by branch order by count(*) desc)as ranks
from walmart group by branch,payment_method)
select * from payment_rank where ranks=1



-- 8. Analyze Sales Shifts Throughout the Day


select day_of_week, count(*)as total_transactions
from walmart group by day_of_week  order by 2 desc



-- 9. Identify Branches with Highest Revenue Decline Year-Over-Year


select branch,year,sum(total)as year_total_revenue,
coalesce(lag(sum(total)) over (partition by branch order by year),0)
asprevious_year_revenue
from walmart group by branch,year;

