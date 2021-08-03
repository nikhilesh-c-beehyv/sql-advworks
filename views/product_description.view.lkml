view: product_description {
  sql_table_name: Production.ProductDescription ;;
  drill_fields: [product_description_id]

  dimension: product_description_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductDescriptionID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
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

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  measure: count {
    type: count
    drill_fields: [product_description_id, product_model_product_description_culture.count]
  }
}
