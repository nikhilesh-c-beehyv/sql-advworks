view: product_category {
  sql_table_name: Production.ProductCategory ;;
  drill_fields: [product_category_id]

  dimension: product_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductCategoryID ;;
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

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [product_category_id, name, product_subcategory.count]
  }
}
