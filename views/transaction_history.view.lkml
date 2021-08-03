view: transaction_history {
  sql_table_name: Production.TransactionHistory ;;

  dimension: actual_cost {
    type: string
    sql: ${TABLE}.ActualCost ;;
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

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: reference_order_id {
    type: number
    sql: ${TABLE}.ReferenceOrderID ;;
  }

  dimension: reference_order_line_id {
    type: number
    sql: ${TABLE}.ReferenceOrderLineID ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.TransactionDate ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.TransactionID ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TransactionType ;;
  }

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name]
  }
}
