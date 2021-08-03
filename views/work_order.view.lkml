view: work_order {
  sql_table_name: Production.WorkOrder ;;
  drill_fields: [work_order_id]

  dimension: work_order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.WorkOrderID ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.DueDate ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
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

  dimension: order_qty {
    type: number
    sql: ${TABLE}.OrderQty ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: scrap_reason_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ScrapReasonID ;;
  }

  dimension: scrapped_qty {
    type: number
    sql: ${TABLE}.ScrappedQty ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: stocked_qty {
    type: number
    sql: ${TABLE}.StockedQty ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      work_order_id,
      product.product_id,
      product.name,
      scrap_reason.scrap_reason_id,
      scrap_reason.name,
      work_order_routing.count
    ]
  }
}
