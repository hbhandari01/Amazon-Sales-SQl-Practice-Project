# ROW NUMBER() - UNIQUE RANKING

## Assign unique rank to each order by amount

select order_id, customer_id, total_amount,
row_number() over (order by total_amount desc) as row_num
from orders; 

##  RANK() - WITH SKIPS IN RANKING I.E. SAME VALUES HAVE SAME RANKING

select customer_id, total_amount,
rank() over (order by total_amount desc) as rank_num
from orders;

## DENSE RANK() - NO SKIPS

select customer_id, total_amount,
dense_rank() over (order by total_amount desc) as dense_rnk
from orders;

# PARTITION BY 

## Rank orders within each customer

select customer_id, order_id, total_amount,
rank() over (partition by customer_id order by total_amount desc) as rank_within_custome
from orders;

# RUNNING TOTAL (CUMULATIVE SUM)

select order_date, 
sum(total_amount) over (order by order_date) as running_revenue
from orders;

# MOVING AVERAGE

select order_date,
avg(total_Amount) over (order by order_date rows between 2 preceding and current row) as moving_avg
from orders;

# LAG() - PREVIOUS ROW VALUE

select customer_id, order_id, total_amount,
lag(total_amount) over (partition by customer_id order by order_date) as previous_order_amount
from orders;

# LEAD() - NEXT ROW VALUE

select customer_id, order_id, total_amount,
lead(total_amount) over (partition by customer_id order by order_date) as next_order_amount
from orders;

# NTILE() - SEGMENTATION

select customer_id, total_amount,
ntile(4) over (order by total_amount desc) as customer_segmentation
from orders;

# PERCENT RANK

select customer_id, total_amount,
percent_rank() over (order by total_amount) as percent_rnk
from orders;

