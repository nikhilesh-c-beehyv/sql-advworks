view: product_model_product_description_culture {
  sql_table_name: Production.ProductModelProductDescriptionCulture ;;

  dimension: culture_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CultureID ;;
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

  dimension: product_description_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductDescriptionID ;;
  }

  dimension: product_model_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductModelID ;;
  }

  measure: count {
    type: count
    drill_fields: [product_model.product_model_id, product_model.name, product_description.product_description_id, culture.culture_id, culture.name]
  }
}
