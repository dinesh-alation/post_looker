view: cities {
  sql_table_name: public.cities ;;

  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
