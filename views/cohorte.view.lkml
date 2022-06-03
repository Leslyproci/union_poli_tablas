view: cohorte {
  sql_table_name: `LDZ.cohorte`
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

  dimension: cohorte_codigo {
    type: string
    sql: ${TABLE}.Cohorte_Codigo ;;
  }

  dimension: cohorte_nombre {
    type: string
    sql: ${TABLE}.Cohorte_Nombre ;;
  }

  dimension: cohorte_sub_nivel_academico {
    type: string
    sql: ${TABLE}.Cohorte_SubNivelAcademico ;;
  }

  dimension: cohorte_tipo {
    type: string
    sql: ${TABLE}.Cohorte_Tipo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
