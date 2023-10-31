project_name: "cnapdftestproject"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

constant: drill_1{
  value: "https://demo.looker.com/explore/thelook/order_items?fields=products.brand,
  products.department,
  products.category,
  products.distribution_center_id,
  products.item_name,
  products.sku,
  products.retail_price,
  order_items.created_date,
  order_items.order_id,
  order_items.status,
  order_items.is_returned,

  order_facts.is_first_purchase,
  order_facts.items_in_order,
  order_items.months_since_signup,
  order_facts.order_amount,
  order_facts.order_cost,
  order_facts.order_gross_margin,
  order_facts.order_sequence_number,
  order_items.sale_price,
  order_items.shipping_time,

  &f[products.brand]={{ _filters['products.brand'] | url_encode }}
  &f[products.department]={{ _filters['products.department'] | url_encode }}
  &f[products.category]={{ _filters['products.category'] | url_encode }}
  &f[products.distribution_center_id]={{ _filters['products.distribution_center_id'] | url_encode }}
  &f[products.item_name]={{ _filters['products.item_name'] | url_encode }}
  &f[products.sku]={{ _filters['products.sku'] | url_encode }}
  &f[products.retail_price]={{ _filters['products.retail_price'] | url_encode }}
  &f[order_items.created_date]=7+days
  &f[order_items.order_id]={{ _filters['order_items.order_id'] | url_encode }}
  &f[order_items.status]={{ _filters['order_items.status'] | url_encode }}
  &f[order_items.is_returned]={{ _filters['order_items.is_returned'] | url_encode }}

  &f[order_items.is_first_purchase]={{ _filters['order_items.is_first_purchase'] | url_encode }}
  &f[order_items.items_in_order]={{ _filters['order_items.items_in_order'] | url_encode }}
  &f[order_items.months_since_signup]={{ _filters['order_items.months_since_signup'] | url_encode }}
  &f[order_items.order_amount]={{ _filters['order_items.order_amount'] | url_encode }}
  &f[order_items.order_cost]={{ _filters['order_items.order_cost'] | url_encode }}
  &f[order_items.order_gross_margin]={{ _filters['order_items.order_gross_margin'] | url_encode }}
  &f[order_items.order_sequence_number]={{ _filters['order_items.order_sequence_number'] | url_encode }}
  &f[order_items.sale_price]={{ _filters['order_items.sale_price'] | url_encode }}
  &f[order_items.shipping_time]={{ _filters['order_items.shipping_time'] | url_encode }}

  &sorts=order_items.order_id
  &limit=500
  &column_limit=50
  "
}
