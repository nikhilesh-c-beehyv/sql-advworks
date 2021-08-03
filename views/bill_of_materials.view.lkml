view: bill_of_materials {
  sql_table_name: Production.BillOfMaterials ;;
  drill_fields: [bill_of_materials_id]

  dimension: bill_of_materials_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BillOfMaterialsID ;;
  }

  dimension: bomlevel {
    type: number
    sql: ${TABLE}.BOMLevel ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.ComponentID ;;
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

  dimension: per_assembly_qty {
    type: number
    sql: ${TABLE}.PerAssemblyQty ;;
  }

  dimension: product_assembly_id {
    type: number
    sql: ${TABLE}.ProductAssemblyID ;;
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

  dimension: unit_measure_code {
    type: string
    sql: ${TABLE}.UnitMeasureCode ;;
  }

  measure: count {
    type: count
    drill_fields: [bill_of_materials_id]
  }
}
