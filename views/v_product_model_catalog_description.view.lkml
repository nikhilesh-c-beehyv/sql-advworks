view: v_product_model_catalog_description {
  sql_table_name: Production.vProductModelCatalogDescription ;;

  dimension: bike_frame {
    type: string
    sql: ${TABLE}.BikeFrame ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension: copyright {
    type: string
    sql: ${TABLE}.Copyright ;;
  }

  dimension: crankset {
    type: string
    sql: ${TABLE}.Crankset ;;
  }

  dimension: maintenance_description {
    type: string
    sql: ${TABLE}.MaintenanceDescription ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.Manufacturer ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
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

  dimension: no_of_years {
    type: string
    sql: ${TABLE}.NoOfYears ;;
  }

  dimension: pedal {
    type: string
    sql: ${TABLE}.Pedal ;;
  }

  dimension: picture_angle {
    type: string
    sql: ${TABLE}.PictureAngle ;;
  }

  dimension: picture_size {
    type: string
    sql: ${TABLE}.PictureSize ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.ProductLine ;;
  }

  dimension: product_model_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductModelID ;;
  }

  dimension: product_photo_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ProductPhotoID ;;
  }

  dimension: product_url {
    type: string
    sql: ${TABLE}.ProductURL ;;
  }

  dimension: rider_experience {
    type: string
    sql: ${TABLE}.RiderExperience ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: saddle {
    type: string
    sql: ${TABLE}.Saddle ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.Style ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: warranty_description {
    type: string
    sql: ${TABLE}.WarrantyDescription ;;
  }

  dimension: warranty_period {
    type: string
    sql: ${TABLE}.WarrantyPeriod ;;
  }

  dimension: wheel {
    type: string
    sql: ${TABLE}.Wheel ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      product_model.product_model_id,
      product_model.name,
      product_photo.product_photo_id,
      product_photo.thumbnail_photo_file_name,
      product_photo.large_photo_file_name
    ]
  }
}
