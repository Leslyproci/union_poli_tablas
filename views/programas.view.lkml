view: programas {
  sql_table_name: `LDZ.programas`
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

  dimension: programa_carrera {
    type: string
    sql: ${TABLE}.Programa_Carrera ;;
  }

  dimension: programa_cod_carrera {
    type: string
    sql: ${TABLE}.ProgramaCod_Carrera ;;
  }

  dimension: programa_cod_catalogo {
    type: string
    sql: ${TABLE}.Programa_CodCatalogo ;;
  }

  dimension: programa_cod_facultad {
    type: string
    sql: ${TABLE}.Programa_CodFacultad ;;
  }

  dimension: programa_cod_nivel_academico {
    type: string
    sql: ${TABLE}.Programa_CodNivelAcademico ;;
  }

  dimension: programa_cod_nivel_formacion {
    type: string
    sql: ${TABLE}.Programa_CodNivelFormacion ;;
  }

  dimension: programa_cod_regla {
    type: string
    sql: ${TABLE}.Programa_CodRegla ;;
  }

  dimension: programa_cod_subnivel_academico {
    type: string
    sql: ${TABLE}.Programa_CodSubnivelAcademico ;;
  }

  dimension: programa_codigo {
    type: string
    sql: ${TABLE}.Programa_Codigo ;;
  }

  dimension: programa_escuela {
    type: string
    sql: ${TABLE}.Programa_Escuela ;;
  }

  dimension: programa_estado {
    type: string
    sql: ${TABLE}.Programa_Estado ;;
  }

  dimension: programa_facultad {
    type: string
    sql: ${TABLE}.Programa_Facultad ;;
  }

  dimension: programa_modalidad {
    type: string
    sql: ${TABLE}.Programa_Modalidad ;;
  }

  dimension: programa_nivel_academico {
    type: string
    sql: ${TABLE}.Programa_NivelAcademico ;;
  }

  dimension: programa_nivel_formacion {
    type: string
    sql: ${TABLE}.Programa_NivelFormacion ;;
  }

  dimension: programa_nombre {
    type: string
    sql: ${TABLE}.Programa_Nombre ;;
  }

  dimension: programa_nombre_corto {
    type: string
    sql: ${TABLE}.Programa_NombreCorto ;;
  }

  dimension: programa_nombre_facultad {
    type: string
    sql: ${TABLE}.Programa_NombreFacultad ;;
  }

  dimension: programa_nombre_facultad_banner {
    type: string
    sql: ${TABLE}.Programa_NombreFacultad_Banner ;;
  }

  dimension: programa_numero_creditos {
    type: string
    sql: ${TABLE}.Programa_NumeroCreditos ;;
  }

  dimension: programa_numero_semestre {
    type: string
    sql: ${TABLE}.Programa_NumeroSemestre ;;
  }

  dimension: programa_segundo_ciclo {
    type: string
    sql: ${TABLE}.Programa_SegundoCiclo ;;
  }

  dimension: programa_snies {
    type: number
    sql: ${TABLE}.Programa_Snies ;;
  }

  dimension: programa_subnivel_academico {
    type: string
    sql: ${TABLE}.Programa_SubnivelAcademico ;;
  }

  dimension: programa_tipo {
    type: string
    sql: ${TABLE}.Programa_Tipo ;;
  }

  dimension: programa_titulo {
    type: string
    sql: ${TABLE}.Programa_Titulo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
