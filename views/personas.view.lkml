view: personas {
  sql_table_name: `LDZ.personas`
    ;;
  drill_fields: [persona_identificacion_anterior]

  dimension: persona_identificacion_anterior {
    primary_key: yes
    type: string
    sql: ${TABLE}.Persona_IdentificacionAnterior ;;
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

  dimension: item1 {
    type: string
    sql: ${TABLE}.item1 ;;
  }

  dimension: persona_ciudad_expedicion {
    type: string
    sql: ${TABLE}.Persona_Ciudad_Expedicion ;;
  }

  dimension: persona_ciudad_nacimiento {
    type: string
    sql: ${TABLE}.Persona_Ciudad_Nacimiento ;;
  }

  dimension: persona_ciudad_residencia {
    type: string
    sql: ${TABLE}.Persona_Ciudad_Residencia ;;
  }

  dimension: persona_codigo {
    type: string
    sql: ${TABLE}.Persona_Codigo ;;
  }

  dimension: persona_depto_expedicion {
    type: string
    sql: ${TABLE}.Persona_Depto_Expedicion ;;
  }

  dimension: persona_depto_nacimiento {
    type: string
    sql: ${TABLE}.Persona_Depto_Nacimiento ;;
  }

  dimension: persona_depto_residencia {
    type: string
    sql: ${TABLE}.Persona_Depto_Residencia ;;
  }

  dimension: persona_discapacidad {
    type: string
    sql: ${TABLE}.Persona_Discapacidad ;;
  }

  dimension: persona_eps {
    type: string
    sql: ${TABLE}.Persona_EPS ;;
  }

  dimension: persona_estado_civil {
    type: string
    sql: ${TABLE}.Persona_EstadoCivil ;;
  }

  dimension: persona_etnia {
    type: string
    sql: ${TABLE}.Persona_Etnia ;;
  }

  dimension: persona_fecha_nacimiento {
    type: string
    sql: ${TABLE}.Persona_FechaNacimiento ;;
  }

  dimension: persona_genero {
    type: string
    sql: ${TABLE}.Persona_Genero ;;
  }

  dimension: persona_grupo_rh {
    type: string
    sql: ${TABLE}.Persona_GrupoRH ;;
  }

  dimension: persona_identificacion_actual {
    type: string
    sql: ${TABLE}.Persona_IdentificacionActual ;;
  }

  dimension: persona_indicador_prioridad {
    type: string
    sql: ${TABLE}.Persona_Indicador_Prioridad ;;
  }

  dimension: persona_pais_expedicion {
    type: string
    sql: ${TABLE}.Persona_Pais_Expedicion ;;
  }

  dimension: persona_pais_nacimiento {
    type: string
    sql: ${TABLE}.Persona_Pais_Nacimiento ;;
  }

  dimension: persona_pais_residencia {
    type: string
    sql: ${TABLE}.Persona_Pais_Residencia ;;
  }

  dimension: persona_pidm_2 {
    type: string
    sql: ${TABLE}.Persona_PIDM_2 ;;
  }

  dimension: persona_primer_apellido {
    type: string
    sql: ${TABLE}.Persona_PrimerApellido ;;
  }

  dimension: persona_primer_nombre {
    type: string
    sql: ${TABLE}.Persona_PrimerNombre ;;
  }

  dimension: persona_segundo_apellido {
    type: string
    sql: ${TABLE}.Persona_SegundoApellido ;;
  }

  dimension: persona_segundo_nombre {
    type: string
    sql: ${TABLE}.Persona_SegundoNombre ;;
  }

  dimension: persona_tipo_identificacion_actual {
    type: string
    sql: ${TABLE}.Persona_TipoIdentificacionActual ;;
  }

  dimension: persona_tipo_identificacion_anterior {
    type: string
    sql: ${TABLE}.Persona_TipoIdentificacionAnterior ;;
  }

  measure: count {
    type: count
    drill_fields: [persona_identificacion_anterior]
  }
}
