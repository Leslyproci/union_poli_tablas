connection: "tablas_poli"

# include all the views
include: "/views/**/*.view"

datagroup: tablas_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tablas_default_datagroup

explore: sap_interfaz_clientes {}

explore: sap_interfaz_recaudo {}

explore: sap_centro_de_costo {}

explore: sap_interfaz_facturacion {
  join: sap_interfaz_recaudo {
    type: left_outer
    sql_on: ${sap_interfaz_facturacion.asignacion}=${sap_interfaz_recaudo.asignacion};;
    relationship: one_to_one
  }
}
