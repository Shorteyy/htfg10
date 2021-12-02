view: sql_runner_query {
  derived_table: {
    sql: select *
      from RidePassengers
      join RideInfo on RidePassengers.RideID = RideInfo.RideID
      join People on people.ID = RidePassengers.PassengerId
      join TaxiRides tr on RideInfo.RideID = tr.id
      join Taxis on Taxis.id = tr.id
      where RideInfo.DropoffLocation = 5
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ride_id {
    type: number
    sql: ${TABLE}.RideID ;;
  }

  dimension: passenger_id {
    type: number
    sql: ${TABLE}.PassengerId ;;
  }

  dimension: ride_id_1 {
    type: number
    sql: ${TABLE}.RideID_1 ;;
  }

  dimension: pickup_location {
    type: number
    sql: ${TABLE}.PickupLocation ;;
  }

  dimension: dropoff_location {
    type: number
    sql: ${TABLE}.DropoffLocation ;;
  }

  dimension_group: pickup_time {
    type: time
    sql: ${TABLE}.PickupTime ;;
  }

  dimension: num_passengers {
    type: number
    sql: ${TABLE}.NumPassengers ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: id_1 {
    type: number
    sql: ${TABLE}.ID_1 ;;
  }

  dimension: taxi_id {
    type: number
    sql: ${TABLE}.TaxiID ;;
  }

  dimension: id_2 {
    type: number
    sql: ${TABLE}.ID_2 ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: experience_rating {
    type: number
    sql: ${TABLE}.ExperienceRating ;;
  }

  dimension: expens_rating {
    type: number
    sql: ${TABLE}.ExpensRating ;;
  }

  dimension: kindness_rating {
    type: number
    sql: ${TABLE}.KindnessRating ;;
  }

  set: detail {
    fields: [
      ride_id,
      passenger_id,
      ride_id_1,
      pickup_location,
      dropoff_location,
      pickup_time_time,
      num_passengers,
      id,
      first_name,
      last_name,
      id_1,
      taxi_id,
      id_2,
      owner,
      experience_rating,
      expens_rating,
      kindness_rating
    ]
  }
}
