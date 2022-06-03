view: sap_centro_de_costo {
  sql_table_name: `LDZ.SAP_CENTRO_DE_COSTO`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

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

  dimension: centrocoste {
    type: string
    sql: ${TABLE}.Centrocoste ;;
  }

  dimension: denominacion {
    type: string
    sql: ${TABLE}.Denominacion ;;
  }

  dimension: edifecha {
    type: string
    sql: ${TABLE}.EDIFecha ;;
  }

  dimension: edihora {
    type: string
    sql: ${TABLE}.EDIHora ;;
  }

  dimension: ediusuario {
    type: string
    sql: ${TABLE}.EDIUsuario ;;
  }

  dimension: flag {
    type: string
    sql: ${TABLE}.Flag ;;
  }

  dimension: identificacionunica_registro {
    type: string
    sql: ${TABLE}.identificacionunicaRegistro ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.Result ;;
  }

  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.Solicitante ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: textoexplicativo {
    type: string
    sql: ${TABLE}.Textoexplicativo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
