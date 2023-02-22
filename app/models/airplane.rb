# == Schema Information
#
# Table name: airplanes
#
#  id              :uuid             not null, primary key
#  airplane_number :integer          not null
#  capacity        :integer          default(0)
#  color           :string
#  state           :string           default("activo"), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  airline_id      :uuid             not null
#
# Indexes
#
#  index_airplanes_on_airline_id  (airline_id)
#
# Foreign Keys
#
#  fk_rails_...  (airline_id => airlines.id)
#
class Airplane < ApplicationRecord
  belongs_to :airline
end
