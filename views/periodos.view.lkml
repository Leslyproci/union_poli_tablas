view: periodos {
  sql_table_name: `LDZ.periodos`
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

  dimension: periodo_academico {
    type: string
    sql: ${TABLE}.Periodo_Academico ;;
  }

  dimension: periodo_anio {
    type: string
    sql: ${TABLE}.Periodo_Anio ;;
  }

  dimension: periodo_codigo {
    type: string
    sql: ${TABLE}.Periodo_Codigo ;;
  }

  dimension: periodo_observacion {
    type: string
    sql: ${TABLE}.Periodo_Observacion ;;
  }

  dimension: periodo_periodo {
    type: string
    sql: ${TABLE}.Periodo_Periodo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
