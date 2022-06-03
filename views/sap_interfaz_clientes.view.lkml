view: sap_interfaz_clientes {
  sql_table_name: `LDZ.SAP_Interfaz_Clientes`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: anio_reg {
    type: string
    sql: ${TABLE}.AnioReg ;;
  }

  dimension: calle {
    type: string
    sql: ${TABLE}.Calle ;;
  }

  dimension: co_pa {
    type: string
    sql: ${TABLE}.CoPa ;;
  }

  dimension: cod_sis_aca {
    type: string
    sql: ${TABLE}.CodSisAca ;;
  }

  dimension: correo {
    type: string
    sql: ${TABLE}.Correo ;;
  }

  dimension: distrito {
    type: string
    sql: ${TABLE}.Distrito ;;
  }

  dimension: evento {
    type: string
    sql: ${TABLE}.Evento ;;
  }

  dimension: f {
    type: string
    sql: ${TABLE}.F ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.Fax ;;
  }

  dimension: fecha_ejec {
    type: string
    sql: ${TABLE}.FechaEjec ;;
  }

  dimension: fecha_graba {
    type: string
    sql: ${TABLE}.FechaGraba ;;
  }

  dimension: gr_contas {
    type: string
    sql: ${TABLE}.GrContas ;;
  }

  dimension: hora_ejec {
    type: string
    sql: ${TABLE}.HoraEjec ;;
  }

  dimension: hora_elim {
    type: string
    sql: ${TABLE}.HoraElim ;;
  }

  dimension: hora_graba {
    type: string
    sql: ${TABLE}.HoraGraba ;;
  }

  dimension: id_reg {
    type: string
    sql: ${TABLE}.IdReg ;;
  }

  dimension: im {
    type: string
    sql: ${TABLE}.Im ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: men {
    type: string
    sql: ${TABLE}.Men ;;
  }

  dimension: mensaje {
    type: string
    sql: ${TABLE}.Mensaje ;;
  }

  dimension: movil {
    type: string
    sql: ${TABLE}.Movil ;;
  }

  dimension: nombre1 {
    type: string
    sql: ${TABLE}.Nombre1 ;;
  }

  dimension: nombre2 {
    type: string
    sql: ${TABLE}.Nombre2 ;;
  }

  dimension: nota {
    type: string
    sql: ${TABLE}.Nota ;;
  }

  dimension: nro_sap {
    type: string
    sql: ${TABLE}.NroSAP ;;
  }

  dimension: numero_id {
    type: string
    sql: ${TABLE}.NumeroId ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }

  dimension: pf {
    type: string
    sql: ${TABLE}.PF ;;
  }

  dimension: poblacion {
    type: string
    sql: ${TABLE}.Poblacion ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sociedad {
    type: string
    sql: ${TABLE}.Sociedad ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.Telefono ;;
  }

  dimension: tp {
    type: string
    sql: ${TABLE}.Tp ;;
  }

  dimension: tratamiento {
    type: string
    sql: ${TABLE}.Tratamiento ;;
  }

  dimension: user_ejec {
    type: string
    sql: ${TABLE}.UserEjec ;;
  }

  dimension: vias_pago {
    type: string
    sql: ${TABLE}.ViasPago ;;
  }

  dimension: zon_ven {
    type: string
    sql: ${TABLE}.ZonVen ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
