select
pd.*,
p.product_name,
p.dosage,
p.dispensing_pharmacy_id,
p.active
from products as p
left join products_demo as pd
on pd.product_name = p.product_name
where active is not null and order_tab='pharmacy';

update products as p
join products_demo as pd
on pd.product_name = p.product_name
set p.dosage = pd.dosage;

select id, product_name, dosage, dispensing_pharmacy_id, active
from products
where order_tab = 'pharmacy' and active is not null
