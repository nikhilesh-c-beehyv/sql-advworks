view: v_product_model_instructions {
  sql_table_name: Production.vProductModelInstructions ;;

  dimension: instructions {
    type: string
    sql: ${TABLE}.Instructions ;;
  }

  dimension: labor_hours {
    type: number
    sql: ${TABLE}.LaborHours ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LocationID ;;
  }

  dimension: lot_size {
    type: number
    sql: ${TABLE}.LotSize ;;
  }

  dimension: machine_hours {
    type: number
    sql: ${TABLE}.MachineHours ;;
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

  dimension: product_model_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ProductModelID ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: setup_hours {
    type: number
    sql: ${TABLE}.SetupHours ;;
  }

  dimension: step {
    type: string
    sql: ${TABLE}.Step ;;
  }

  measure: count {
    type: count
    drill_fields: [name, product_model.product_model_id, product_model.name, location.location_id, location.name]
  }
}
