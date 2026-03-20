select pvm.id,
pvm.product_id,
pvm.variant_id,
p.id as product_id,
p.product_name,
p.active,
p.dispensing_pharmacy_id
from products as p
left join product_variant_mtm as pvm
on p.id=pvm.product_id
where pvm.id is null and p.order_tab='pharmacy' and p.dispensing_pharmacy_id is not null and active is not null