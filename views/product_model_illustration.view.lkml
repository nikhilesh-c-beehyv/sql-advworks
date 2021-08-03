view: product_model_illustration {
  sql_table_name: Production.ProductModelIllustration ;;

  dimension: illustration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.IllustrationID ;;
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

  dimension: product_model_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductModelID ;;
  }

  measure: count {
    type: count
    drill_fields: [product_model.product_model_id, product_model.name, illustration.illustration_id]
  }
}
