connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021_group10_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021_group10_default_datagroup

explore: companies {}

explore: aib_bnbs_nyc {}

explore: ages {}

explore: bnbreservations {}

explore: bnbcheckins {}

explore: company_employees {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}
#TTEEST
explore: appearance {}

explore: events {}

explore: financial_status {}

explore: gender {}

explore: locations {}

explore: people {}

explore: physical_characteristics {}

explore: ride_info {}

explore: religions {}

explore: nationalities {}

explore: taxis {}

explore: roles {}

explore: sub_departments {}

explore: ride_passengers {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}
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
}
