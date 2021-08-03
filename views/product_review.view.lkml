view: product_review {
  sql_table_name: Production.ProductReview ;;
  drill_fields: [product_review_id]

  dimension: product_review_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductReviewID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
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

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension_group: review {
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
    sql: ${TABLE}.ReviewDate ;;
  }

  dimension: reviewer_name {
    type: string
    sql: ${TABLE}.ReviewerName ;;
  }

  measure: count {
    type: count
    drill_fields: [product_review_id, reviewer_name, product.product_id, product.name]
  }
}
