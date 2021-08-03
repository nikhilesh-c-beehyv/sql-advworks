view: product_inventory {
  sql_table_name: Production.ProductInventory ;;

  dimension: bin {
    type: number
    sql: ${TABLE}.Bin ;;
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

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: shelf {
    type: string
    sql: ${TABLE}.Shelf ;;
  }

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name, location.location_id, location.name]
  }
}
