module Queries
  class FetchAirplanes < Queries::BaseQuery

    type [Types::AirplaneType], null: false

    def resolve
      Airplane.all.order(created_at: :desc)
    end
  end
end