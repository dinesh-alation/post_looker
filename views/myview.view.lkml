view: myview {
  sql_table_name: public.myview ;;

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."date" ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }
  dimension: prcp {
    type: number
    sql: ${TABLE}."prcp" ;;
  }
  dimension: temp_hi {
    type: number
    sql: ${TABLE}."temp_hi" ;;
  }
  dimension: temp_lo {
    type: number
    sql: ${TABLE}."temp_lo" ;;
  }
  measure: count {
    type: count
  }
}
