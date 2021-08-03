view: work_order_routing {
  sql_table_name: Production.WorkOrderRouting ;;

  dimension: actual_cost {
    type: string
    sql: ${TABLE}.ActualCost ;;
  }

  dimension_group: actual_end {
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
    sql: ${TABLE}.ActualEndDate ;;
  }

  dimension: actual_resource_hrs {
    type: number
    sql: ${TABLE}.ActualResourceHrs ;;
  }

  dimension_group: actual_start {
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
    sql: ${TABLE}.ActualStartDate ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LocationID ;;
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

  dimension: operation_sequence {
    type: number
    sql: ${TABLE}.OperationSequence ;;
  }

  dimension: planned_cost {
    type: string
    sql: ${TABLE}.PlannedCost ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension_group: scheduled_end {
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
    sql: ${TABLE}.ScheduledEndDate ;;
  }

  dimension_group: scheduled_start {
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
    sql: ${TABLE}.ScheduledStartDate ;;
  }

  dimension: work_order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.WorkOrderID ;;
  }

  measure: count {
    type: count
    drill_fields: [work_order.work_order_id, product.product_id, product.name, location.location_id, location.name]
  }
}
