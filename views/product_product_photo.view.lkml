view: product_product_photo {
  sql_table_name: Production.ProductProductPhoto ;;

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

  dimension: primary {
    type: string
    sql: ${TABLE}."Primary" ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductID ;;
  }

  dimension: product_photo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductPhotoID ;;
  }

  measure: count {
    type: count
    drill_fields: [product.product_id, product.name, product_photo.product_photo_id, product_photo.thumbnail_photo_file_name, product_photo.large_photo_file_name]
  }
}
