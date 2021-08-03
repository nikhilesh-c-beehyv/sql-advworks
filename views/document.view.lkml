view: document {
  sql_table_name: Production.Document ;;

  dimension: change_number {
    type: number
    sql: ${TABLE}.ChangeNumber ;;
  }

  dimension: document {
    type: string
    sql: ${TABLE}.Document ;;
  }

  dimension: document_level {
    type: number
    sql: ${TABLE}.DocumentLevel ;;
  }

  dimension: document_node {
    type: string
    sql: ${TABLE}.DocumentNode ;;
  }

  dimension: document_summary {
    type: string
    sql: ${TABLE}.DocumentSummary ;;
  }

  dimension: file_extension {
    type: string
    sql: ${TABLE}.FileExtension ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: folder_flag {
    type: string
    sql: ${TABLE}.FolderFlag ;;
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

  dimension: owner {
    type: number
    sql: ${TABLE}.Owner ;;
  }

  dimension: revision {
    type: string
    sql: ${TABLE}.Revision ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  measure: count {
    type: count
    drill_fields: [file_name]
  }
}
