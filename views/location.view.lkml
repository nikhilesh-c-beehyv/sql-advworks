view: location {
  sql_table_name: Production.Location ;;
  drill_fields: [location_id]

  dimension: location_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LocationID ;;
  }

  dimension: availability {
    type: number
    sql: ${TABLE}.Availability ;;
  }

  dimension: cost_rate {
    type: string
    sql: ${TABLE}.CostRate ;;
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
    drill_fields: [location_id, name, product_inventory.count, v_product_model_instructions.count, work_order_routing.count]
  }
}
