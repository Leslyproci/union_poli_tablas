view: csu {
  sql_table_name: `LDZ.CSU`
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

  dimension: csu {
    type: string
    sql: ${TABLE}.CSU ;;
  }

  dimension: csu_categoria {
    type: string
    sql: ${TABLE}.CSU_Categoria ;;
  }

  dimension: csu_cod {
    type: string
    sql: ${TABLE}.CSU_Cod ;;
  }

  dimension: csu_direccion {
    type: string
    sql: ${TABLE}.CSU_Direccion ;;
  }

  dimension: csu_estado {
    type: string
    sql: ${TABLE}.CSU_Estado ;;
  }

  dimension: csu_grado_maduracion {
    type: string
    sql: ${TABLE}.CSU_GradoMaduracion ;;
  }

  dimension: csu_localizacion {
    type: string
    sql: ${TABLE}.CSU_Localizacion ;;
  }

  dimension: csu_nit {
    type: string
    sql: ${TABLE}.CSU_Nit ;;
  }

  dimension: csu_nombre {
    type: string
    sql: ${TABLE}.CSU_Nombre ;;
  }

  dimension: csu_razon_social {
    type: string
    sql: ${TABLE}.CSU_RazonSocial ;;
  }

  dimension: csu_region_actual {
    type: string
    sql: ${TABLE}.CSU_Region_Actual ;;
  }

  dimension: csu_subregion {
    type: string
    sql: ${TABLE}.CSU_Subregion ;;
  }

  dimension: csu_tipo {
    type: string
    sql: ${TABLE}.CSU_Tipo ;;
  }

  dimension: csu_zona_venta {
    type: string
    sql: ${TABLE}.CSU_ZonaVenta ;;
  }

  dimension: temp1 {
    type: string
    sql: ${TABLE}.Temp1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
