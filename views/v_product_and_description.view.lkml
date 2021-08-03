view: v_product_and_description {
  sql_table_name: Production.vProductAndDescription ;;

  dimension: culture_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CultureID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: product_model {
    type: string
    sql: ${TABLE}.ProductModel ;;
  }

  measure: count {
    type: count
    drill_fields: [name, product.product_id, product.name, culture.culture_id, culture.name]
  }
}
