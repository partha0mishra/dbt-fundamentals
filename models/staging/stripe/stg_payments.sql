select 
id as payment_id
,orderid as order_id
, paymentmethod as payment_method
-- amount is stored in cents. converting to dollars.
, amount/100 as amount
, status
, created as created_at
from {{source('stripe','payment')}}