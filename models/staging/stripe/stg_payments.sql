select 
id as payment_id
,orderid as order_id
, paymentmethod as payment_method
-- amount is stored in cents. converting to dollars.
, {{cents_to_dollars('amount')}} as amount
, status
, created as created_at
from {{source('stripe','payment')}}

{{ limit_data_in_dev('created_at') }}