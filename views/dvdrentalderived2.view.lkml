# If necessary, uncomment the line below to include explore_source.
 include: "/models/dvdrental1.model.lkml"

view: dvdrentalderived2 {
  derived_table: {
    interval_trigger: "5 minutes"
    indexes: ["actor_id","film_id"]
    explore_source: film_actor {
      column: first_name { field: actor.first_name }
      column: actor_id { field: actor.actor_id }
      column: last_name { field: actor.last_name }
      column: description { field: film.description }
      column: film_id { field: film.film_id }
      column: fulltext { field: film.fulltext }
      column: lang_id { field: film.lang_id }
      column: language_id { field: film.language_id }
      column: last_update_month { field: film.last_update_month }
      column: length { field: film.length }
      column: release_year { field: film.release_year }
      column: rental_duration { field: film.rental_duration }
      column: special_features { field: film.special_features }
      column: title { field: film.title }
      column: replacement_cost { field: film.replacement_cost }
      column: rental_rate { field: film.rental_rate }
      column: average_rental_duration { field: film.average_rental_duration }
      column: count { field: film.count }
      column: total_rental_duration { field: film.total_rental_duration }
      column: film_id {}
      column: actor_id {}
      column: count {}
      column: name { field: language.name }
      column: language_id { field: language.language_id }
      column: count { field: language.count }
      derived_column: id {
        sql:  actor_id + film_id ;;
      }
    }
  }
  dimension: id {
    description: ""
    primary_key: yes
  }

  dimension: first_name {
    description: ""

  }
  dimension: actor_id {
    description: ""
    type: number
  }
  dimension: last_name {
    description: ""
  }
  dimension: description {
    description: ""
  }
  dimension: film_id {
    description: ""
    type: number
  }
  dimension: fulltext {
    description: ""
  }
  dimension: lang_id {
    description: ""
    type: number
  }
  dimension: language_id {
    description: ""
    type: number
  }
  dimension: last_update_month {
    description: ""
    type: date_month
  }
  dimension: length {
    description: ""
    type: number
  }
  dimension: release_year {
    description: ""
    type: number
  }
  dimension: rental_duration {
    description: ""
    type: number
  }
  dimension: special_features {
    description: ""
  }
  dimension: title {
    description: ""
  }
  dimension: replacement_cost {
    description: ""
    type: number
  }
  dimension: rental_rate {
    description: ""
    type: number
  }
  dimension: average_rental_duration {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: total_rental_duration {
    description: ""
    type: number
  }

}
