view: scrap_reason {
  sql_table_name: Production.ScrapReason ;;
  drill_fields: [scrap_reason_id]

  dimension: scrap_reason_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ScrapReasonID ;;
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
    drill_fields: [scrap_reason_id, name, work_order.count]
  }
}
