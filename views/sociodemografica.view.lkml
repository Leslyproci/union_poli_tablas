view: sociodemografica {
  sql_table_name: `LDZ.sociodemografica`
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

  dimension: cod_estadocivil_1 {
    type: string
    sql: ${TABLE}.COD_ESTADOCIVIL_1 ;;
  }

  dimension: cod_sexo_1 {
    type: string
    sql: ${TABLE}.COD_SEXO_1 ;;
  }

  dimension: estadocivil {
    type: string
    sql: ${TABLE}.ESTADOCIVIL ;;
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.GENERO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
