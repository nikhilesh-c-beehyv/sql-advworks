connection: "ifac-advworks-sql"

# include all the views
include: "/views/**/*.view"

datagroup: adventureworks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: adventureworks_default_datagroup

explore: bill_of_materials {}

explore: culture {}

explore: document {}

explore: illustration {}

explore: location {}

explore: product {
  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_category {}

explore: product_cost_history {
  join: product {
    type: left_outer
    sql_on: ${product_cost_history.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_description {}

explore: product_document {
  join: product {
    type: left_outer
    sql_on: ${product_document.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_inventory {
  join: product {
    type: left_outer
    sql_on: ${product_inventory.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${product_inventory.location_id} = ${location.location_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_list_price_history {
  join: product {
    type: left_outer
    sql_on: ${product_list_price_history.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_model {}

explore: product_model_illustration {
  join: product_model {
    type: left_outer
    sql_on: ${product_model_illustration.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: illustration {
    type: left_outer
    sql_on: ${product_model_illustration.illustration_id} = ${illustration.illustration_id} ;;
    relationship: many_to_one
  }
}

explore: product_model_product_description_culture {
  join: product_model {
    type: left_outer
    sql_on: ${product_model_product_description_culture.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_description {
    type: left_outer
    sql_on: ${product_model_product_description_culture.product_description_id} = ${product_description.product_description_id} ;;
    relationship: many_to_one
  }

  join: culture {
    type: left_outer
    sql_on: ${product_model_product_description_culture.culture_id} = ${culture.culture_id} ;;
    relationship: many_to_one
  }
}

explore: product_photo {}

explore: product_product_photo {
  join: product {
    type: left_outer
    sql_on: ${product_product_photo.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_photo {
    type: left_outer
    sql_on: ${product_product_photo.product_photo_id} = ${product_photo.product_photo_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_review {
  join: product {
    type: left_outer
    sql_on: ${product_review.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: product_subcategory {
  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: scrap_reason {}

explore: transaction_history {
  join: product {
    type: left_outer
    sql_on: ${transaction_history.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: transaction_history_archive {
  join: product {
    type: left_outer
    sql_on: ${transaction_history_archive.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: unit_measure {}

explore: v_product_and_description {
  join: product {
    type: left_outer
    sql_on: ${v_product_and_description.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: culture {
    type: left_outer
    sql_on: ${v_product_and_description.culture_id} = ${culture.culture_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: v_product_model_catalog_description {
  join: product_model {
    type: left_outer
    sql_on: ${v_product_model_catalog_description.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_photo {
    type: left_outer
    sql_on: ${v_product_model_catalog_description.product_photo_id} = ${product_photo.product_photo_id} ;;
    relationship: many_to_one
  }
}

explore: v_product_model_instructions {
  join: product_model {
    type: left_outer
    sql_on: ${v_product_model_instructions.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${v_product_model_instructions.location_id} = ${location.location_id} ;;
    relationship: many_to_one
  }
}

explore: work_order {
  join: product {
    type: left_outer
    sql_on: ${work_order.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: scrap_reason {
    type: left_outer
    sql_on: ${work_order.scrap_reason_id} = ${scrap_reason.scrap_reason_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}

explore: work_order_routing {
  join: work_order {
    type: left_outer
    sql_on: ${work_order_routing.work_order_id} = ${work_order.work_order_id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${work_order_routing.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: location {
    type: left_outer
    sql_on: ${work_order_routing.location_id} = ${location.location_id} ;;
    relationship: many_to_one
  }

  join: scrap_reason {
    type: left_outer
    sql_on: ${work_order.scrap_reason_id} = ${scrap_reason.scrap_reason_id} ;;
    relationship: many_to_one
  }

  join: product_subcategory {
    type: left_outer
    sql_on: ${product.product_subcategory_id} = ${product_subcategory.product_subcategory_id} ;;
    relationship: many_to_one
  }

  join: product_model {
    type: left_outer
    sql_on: ${product.product_model_id} = ${product_model.product_model_id} ;;
    relationship: many_to_one
  }

  join: product_category {
    type: left_outer
    sql_on: ${product_subcategory.product_category_id} = ${product_category.product_category_id} ;;
    relationship: many_to_one
  }
}
