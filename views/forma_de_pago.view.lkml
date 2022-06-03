view: forma_de_pago {
  sql_table_name: `LDZ.forma_de_pago`
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

  dimension: cod_forma_pago_1 {
    type: string
    sql: ${TABLE}.Cod_FormaPago_1 ;;
  }

  dimension: nombre_forma_pago {
    type: string
    sql: ${TABLE}.Nombre_FormaPago ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
