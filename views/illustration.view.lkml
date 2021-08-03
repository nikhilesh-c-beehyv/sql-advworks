view: illustration {
  sql_table_name: Production.Illustration ;;
  drill_fields: [illustration_id]

  dimension: illustration_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.IllustrationID ;;
  }

  dimension: diagram {
    type: string
    sql: ${TABLE}.Diagram ;;
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

  measure: count {
    type: count
    drill_fields: [illustration_id, product_model_illustration.count]
  }
}
