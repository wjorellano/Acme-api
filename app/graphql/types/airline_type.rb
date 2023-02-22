# frozen_string_literal: true

module Types
  class AirlineType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :code, Integer, null: false
    field :state, String, null: false
    field :airplanes, [Types::AirplaneType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
