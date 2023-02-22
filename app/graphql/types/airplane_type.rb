# frozen_string_literal: true

module Types
  class AirplaneType < Types::BaseObject
    field :id, ID, null: false
    field :airplane_number, Integer, null: false
    field :capacity, Integer
    field :color, String
    field :state, String, null: false
    field :airline_id, Types::AirlineType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
