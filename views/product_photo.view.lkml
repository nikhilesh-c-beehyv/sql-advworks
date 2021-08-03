view: product_photo {
  sql_table_name: Production.ProductPhoto ;;
  drill_fields: [product_photo_id]

  dimension: product_photo_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductPhotoID ;;
  }

  dimension: large_photo {
    type: string
    sql: ${TABLE}.LargePhoto ;;
  }

  dimension: large_photo_file_name {
    type: string
    sql: ${TABLE}.LargePhotoFileName ;;
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

  dimension: thumb_nail_photo {
    type: string
    sql: ${TABLE}.ThumbNailPhoto ;;
  }

  dimension: thumbnail_photo_file_name {
    type: string
    sql: ${TABLE}.ThumbnailPhotoFileName ;;
  }

  measure: count {
    type: count
    drill_fields: [product_photo_id, thumbnail_photo_file_name, large_photo_file_name, product_product_photo.count, v_product_model_catalog_description.count]
  }
}
