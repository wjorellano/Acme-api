module Queries
  class FetchRunways < Queries::BaseQuery

    type [Types::RunwayType], null: false

    def resolve
      Runway.all.order(created_at: :desc)
    end
  end
end