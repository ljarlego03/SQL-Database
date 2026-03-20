select 
legal_name_of_practice,
primary_order_contact_name,
card_info_number,
card_info_expiration_date,
card_info_security_code,
card_info_name_on_card,
coalesce(billing_street_address,address_1) as Billing_Address,
coalesce(billing_address_2,address_2)as Billing_address_2,
coalesce(billing_city,city) as Billing_city,
coalesce(billing_state,state) as Billing_state,
coalesce(billing_zip,zip) as Billing_Zip
from office 
where card_info_number is not null and card_info_expiration_date is not null and card_info_security_code is not null
order by legal_name_of_practice
