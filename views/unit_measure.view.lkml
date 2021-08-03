view: unit_measure {
  sql_table_name: Production.UnitMeasure ;;

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

  dimension: unit_measure_code {
    type: string
    sql: ${TABLE}.UnitMeasureCode ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
