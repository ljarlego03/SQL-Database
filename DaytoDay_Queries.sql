select*
from office
where legal_name_of_practice ='Jeffrey L. Stein, MD, PA';

select*
from providers
where name like '%Stein%';

select*
from orders_other
where prescriber_id=129;

select*
from office_authorize_payment_profiles;

select*
from authorize_payment_profiles
where id=3