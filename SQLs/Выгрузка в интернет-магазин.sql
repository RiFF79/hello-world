select
	fullname as short_desctription,
    name,
    name as description,
    '' as categories,
    'Духи' as attribute_set,
    'simple' as type,
    cnt_all as qty,
    id as sku,
    '' as simple_skus,
    '' as configurable_attributes,
    '' as super_attribute_pricing,
    price_shop2 as price,
    '' as special_price,
    '' as special_from_date,
    '' as special_to_date,
	'0,000000001' as weight,
    1 as status,
    4 as visibility,
    0 as tax_class_id,
    (select name from firms where firms.id = goods.firm_id) as Manufacturer,
    '' as country_of_manufacture,
    '' as meta_title,
    '' as meta_keyword,
	'' as meta_description,
    State,
    ml as Volume,
    set_description,
    product_type as type_1,
    product_no as cosm_no,
    product_color as color
from
	goods
where
	(deleted <> 1)
order by 
	name   
    