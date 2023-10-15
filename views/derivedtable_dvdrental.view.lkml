# If necessary, uncomment the line below to include explore_source..
 include: "/models/dvdrental1.model.lkml"

view: derivedtable_dvdrental {
  derived_table: {
    explore_source: film_actor {
      column: actor_id { field: actor.actor_id }
      column: first_name { field: actor.first_name }
      column: last_name { field: actor.last_name }
      column: last_update_date { field: actor.last_update_date }
      column: description { field: film.description }
      column: film_id { field: film.film_id }
      column: fulltext { field: film.fulltext }
      column: lang_id { field: film.lang_id }
      column: language_id { field: film.language_id }
      column: length { field: film.length }
      column: release_year { field: film.release_year }
      column: rating { field: film.rating }
      column: rental_duration { field: film.rental_duration }
      column: rental_rate { field: film.rental_rate }
      column: replacement_cost { field: film.replacement_cost }
      column: special_features { field: film.special_features }
      column: title { field: film.title }
      column: count { field: actor.count }
      column: average_rental_duration { field: film.average_rental_duration }
      column: actor_id {}
      column: count {}
      column: language_id { field: language.language_id }
    }
  }
  dimension: actor_id {
    description: ""
    type: number
  }
  dimension: first_name {
    description: ""
  }
  dimension: last_name {
    description: ""
  }
  dimension: last_update_date {
    description: ""
    type: date
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
  dimension: length {
    description: ""
    type: number
  }
  dimension: release_year {
    description: ""
    type: number
  }
  dimension: rating {
    description: ""
  }
  dimension: rental_duration {
    description: ""
    type: number
  }
  dimension: rental_rate {
    description: ""
    type: number
  }
  dimension: replacement_cost {
    description: ""
    type: number
  }
  dimension: special_features {
    description: ""
  }
  dimension: title {
    description: ""
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: average_rental_duration {
    description: ""
    type: number
  }
}
