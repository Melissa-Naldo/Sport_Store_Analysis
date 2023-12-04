--Finding the total profit, total revenue, profit margin and total number of orders of our sport store in 2022

Select round(sum(revenue), 2) as total_revenue, round(sum(profit), 2) as total_profit, Count(order_id) as Nº_orders, round(sum(profit)/sum(revenue)*100, 2) as profit_margin
From [dbo].[orders]

--Finding the total profit, total revenue, profit margin and total number of orders of per sport in our store in 2022
Select round(sum(revenue), 2) as total_revenue, round(sum(profit), 2) as total_profit, Count(order_id) as Nº_orders, round(sum(profit)/sum(revenue)*100, 2) as profit_margin, sport
From Sport_Store.dbo.orders
Where revenue Is Not Null 
Group by sport
Order by profit_margin desc

-- I want to see my KPIs over the months of 2022

Select Month(date) as Month, sum(profit) as total_profit, sum(revenue) as total_sales, round(sum(profit)/sum(revenue)*100, 2) as profit_margin
From Sport_Store.dbo.orders
Where month(date) is not null
Group by month(date)
Order by month(date)

-- How does the profit change over each month
With monthly_profit as (
Select Month(date) as Month, sum(profit) as total_profit, round(sum(profit)/sum(revenue)*100, 2) as profit_margin
From Sport_Store.dbo.orders
Where month(date) is not null
Group by month(date)
)

Select month, profit_margin, total_profit, lag(total_profit) over (order by month) as previous_month_profit, total_profit-(lag(total_profit) over (order by month)) as profit_difference, round((total_profit-(lag(total_profit) over (order by month)))/lag(total_profit) over (order by month), 2) as percentagem_growth
From monthly_profit
order by month

-- How does my profit per sport per month change
Select sport, month(date) as month, sum(profit) as total_profit
From Sport_Store.dbo.orders
Where month(date) is not null
Group by sport, month(date)
Order by sport, month(date)

-- How do my KPIs change depending on the state
Select  
row_number() over (order by sum(o.revenue) desc) as revenue_rank,
c.state,
sum(o.revenue) as total_revenue, 
sum(o.profit) as total_profit, 
round(sum(o.profit)/sum(o.revenue)*100, 2) as profit_margin
From [Sport_Store].[dbo].[orders] as o
Join [Sport_Store].[dbo].[customers] as c
On o.customer_id=c.customer_id
Group by c.state
Order by total_profit desc

-- Evaluating my buyers per state
Select count(customer_id) as nº_orders, State
From Sport_Store.dbo.customers
Group by State
Order by count(customer_id) desc


-- Evaluating my buyers per state per sport
Select count(orders.customer_id) as nº_orders, State, sport, sum(profit) as total_profit
From Sport_Store.dbo.customers
Join Sport_Store.dbo.orders
On customers.customer_id=orders.customer_id
Group by State, sport
Order by count(orders.customer_id) desc

-- Evaluating the weekday with most buyers and most profit

Select count(order_id) as nº_orders, Weekday as week_day
From Sport_Store.dbo.orders
Group by Weekday
Order by count(order_id) desc

Select Weekday as week_day, round(SUM(profit), 2) as profit, round(SUM(revenue), 2) as revenue
From Sport_Store.dbo.orders
Group by Weekday
Order by SUM(profit) desc

-- I want to look at my ratings
Select Avg(rating) as avg_rating, 
(Select count(rating)  From Sport_store.dbo.orders  Where rating is not null) as total_nº_rating
From Sport_store.dbo.orders
Where rating is not null

Select rating, count(rating) as number_reviews
From Sport_store.dbo.orders
Where rating is not null
Group by rating
Order by rating desc

Select rating, sum(revenue) as total_revenue, sum(profit) as total_profit, sum(profit)/sum(revenue)*100 as profit_margin
From Sport_Store.dbo.orders
Where rating is not null
Group by rating
order by rating desc

-- From which state where my best and wost reviews

Select State, rating, count(rating) as nº_evaluatinos
From Sport_Store.dbo.customers
	Join Sport_Store.dbo.orders
	On customers.customer_id=orders.customer_id
	Where rating is not null and rating=1
	Group by rating, State
	Order by count(rating) desc
	

Select State, rating, count(rating) as nº_evaluatinos
From Sport_Store.dbo.customers
	Join Sport_Store.dbo.orders
	On customers.customer_id=orders.customer_id
	Where rating is not null and rating=5
	Group by rating, State
	Order by count(rating) desc