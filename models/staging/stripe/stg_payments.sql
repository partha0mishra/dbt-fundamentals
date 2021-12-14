select orderid as order_id
-- amount is stored in cents. converting to dollars.
, amount/100 as amount
, status
from {{source('stripe','payment')}}