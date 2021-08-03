view: product_document {
  sql_table_name: Production.ProductDocument ;;

  dimension: document_node {
    type: string
    sql: ${TABLE}.DocumentNode ;;
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

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name]
  }
}
