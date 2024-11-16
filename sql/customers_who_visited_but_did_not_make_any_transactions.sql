/* Write your T-SQL query statement below */

select customer_id, count(*) as count_no_trans
from visits v 
left join transactions t on v.visit_id = t.visit_id 
where t.transaction_id is null 
group by customer_id
order by customer_id;