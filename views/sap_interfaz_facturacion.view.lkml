view: sap_interfaz_facturacion {
  sql_table_name: `LDZ.SAP_interfaz_facturacion`
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

  dimension: aplazamientos {
    type: string
    sql: ${TABLE}.Aplazamientos ;;
  }

  dimension: areafuncional {
    type: string
    sql: ${TABLE}.Areafuncional ;;
  }

  dimension: artes_deportes {
    type: string
    sql: ${TABLE}.ArtesDeportes ;;
  }

  dimension: asignacion {
    type: string
    sql: ${TABLE}.Asignacion ;;
  }

  dimension: base {
    type: string
    sql: ${TABLE}.Base ;;
  }

  dimension: becas_excelencia_acad {
    type: string
    sql: ${TABLE}.BecasExcelenciaAcad ;;
  }

  dimension: becas_fondosexterno {
    type: string
    sql: ${TABLE}.BecasFondosexterno ;;
  }

  dimension: becas_respons_social {
    type: string
    sql: ${TABLE}.BecasResponsSocial ;;
  }

  dimension: cantidadtotal {
    type: string
    sql: ${TABLE}.Cantidadtotal ;;
  }

  dimension: centro {
    type: string
    sql: ${TABLE}.Centro ;;
  }

  dimension: centrobeneficio {
    type: string
    sql: ${TABLE}.Centrobeneficio ;;
  }

  dimension: condicionespago {
    type: string
    sql: ${TABLE}.Condicionespago ;;
  }

  dimension: denominacion {
    type: string
    sql: ${TABLE}.Denominacion ;;
  }

  dimension: descuentos_benefic {
    type: string
    sql: ${TABLE}.DescuentosBenefic ;;
  }

  dimension: descuentos_contrato {
    type: string
    sql: ${TABLE}.DescuentosContrato ;;
  }

  dimension: descuentoscomercial {
    type: string
    sql: ${TABLE}.Descuentoscomercial ;;
  }

  dimension: documento_ventas {
    type: string
    sql: ${TABLE}.Documento_ventas ;;
  }

  dimension: edifecha {
    type: string
    sql: ${TABLE}.EDIFecha ;;
  }

  dimension: edihora {
    type: string
    sql: ${TABLE}.EDIHora ;;
  }

  dimension: ejecutado_usuario {
    type: string
    sql: ${TABLE}.EjecutadoUsuario ;;
  }

  dimension: ejercicio {
    type: string
    sql: ${TABLE}.Ejercicio ;;
  }

  dimension: eliminado_hora {
    type: string
    sql: ${TABLE}.EliminadoHora ;;
  }

  dimension: evento {
    type: string
    sql: ${TABLE}.Evento ;;
  }

  dimension: factura {
    type: string
    sql: ${TABLE}.Factura ;;
  }

  dimension: fechadocumento {
    type: string
    sql: ${TABLE}.Fechadocumento ;;
  }

  dimension: fechafactura {
    type: string
    sql: ${TABLE}.Fechafactura ;;
  }

  dimension: fechafinal {
    type: string
    sql: ${TABLE}.Fechafinal ;;
  }

  dimension: fechainicio {
    type: string
    sql: ${TABLE}.Fechainicio ;;
  }

  dimension: identificacionunicadel_registro {
    type: string
    sql: ${TABLE}.identificacionunicadelRegistro ;;
  }

  dimension: idprograma {
    type: string
    sql: ${TABLE}.IDprograma ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: materialantiguo {
    type: string
    sql: ${TABLE}.materialantiguo ;;
  }

  dimension: modalidad_estudiante {
    type: string
    sql: ${TABLE}.ModalidadEstudiante ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }

  dimension: mrcaselecprocfnd {
    type: string
    sql: ${TABLE}.Mrcaselecprocfnd ;;
  }

  dimension: nivel_estudiante {
    type: string
    sql: ${TABLE}.NivelEstudiante ;;
  }

  dimension: oficinventas {
    type: string
    sql: ${TABLE}.Oficinventas ;;
  }

  dimension: periodo_academico {
    type: string
    sql: ${TABLE}.PeriodoAcademico ;;
  }

  dimension: procesado_fecha {
    type: string
    sql: ${TABLE}.ProcesadoFecha ;;
  }

  dimension: procesado_hora {
    type: string
    sql: ${TABLE}.ProcesadoHora ;;
  }

  dimension: procesado_mensaje {
    type: string
    sql: ${TABLE}.ProcesadoMensaje ;;
  }

  dimension: respons_pago {
    type: string
    sql: ${TABLE}.ResponsPago ;;
  }

  dimension: semestre_financiero {
    type: string
    sql: ${TABLE}.SemestreFinanciero ;;
  }

  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.Solicitante ;;
  }

  dimension: textomensaje {
    type: string
    sql: ${TABLE}.Textomensaje ;;
  }

  dimension: tipo_alumno {
    type: string
    sql: ${TABLE}.TipoAlumno ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
