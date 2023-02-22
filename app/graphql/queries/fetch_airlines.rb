module Queries
  class FetchAirlines < Queries::BaseQuery

    type [Types::AirlineType], null: false

    def resolve
      Airline.all.order(created_at: :desc)
    end
  end
end