view: sql_runner_query_emplyoyees_datasights {
  derived_table: {
    sql: select *
      From CompanyEmployees
      join SubDepartments on SubDepartments.ID_1 = CompanyEmployees. SubDepartment
      join Companies on Subdepartments.ID = Companies.ID
      join People on People.ID = CompanyEmployees.ID
      where Name = 'DataSight'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: sub_department {
    type: number
    sql: ${TABLE}.SubDepartment ;;
  }

  dimension: id_2 {
    type: number
    sql: ${TABLE}.ID_2 ;;
  }

  dimension: id_1 {
    type: number
    sql: ${TABLE}.ID_1 ;;
  }

  dimension: id_3 {
    type: number
    sql: ${TABLE}.ID_3 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: id_4 {
    type: number
    sql: ${TABLE}.ID_4 ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  set: detail {
    fields: [
      id,
      sub_department,
      id_2,
      id_1,
      id_3,
      name,
      id_4,
      first_name,
      last_name
    ]
  }
}
