view: product_subcategory {
  sql_table_name: Production.ProductSubcategory ;;
  drill_fields: [product_subcategory_id]

  dimension: product_subcategory_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductSubcategoryID ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: product_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductCategoryID ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [product_subcategory_id, name, product_category.product_category_id, product_category.name, product.count]
  }
}
