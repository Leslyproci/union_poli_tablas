view: eps {
  sql_table_name: `LDZ.eps`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: eps_codigo {
    type: string
    sql: ${TABLE}.Eps_Codigo ;;
  }

  dimension: eps_nombre {
    type: string
    sql: ${TABLE}.Eps_Nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
