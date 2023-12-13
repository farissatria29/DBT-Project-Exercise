select ord.order_id,
       ord.customer_id,
       pymt.amount
from {{ref("stg_orders")}} as ord
left join {{ref("stg_payments")}} as pymt using (order_id)