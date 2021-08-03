view: culture {
  sql_table_name: Production.Culture ;;
  drill_fields: [culture_id]

  dimension: culture_id {
    primary_key: yes
    type: string
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [culture_id, name, product_model_product_description_culture.count, v_product_and_description.count]
  }
}
