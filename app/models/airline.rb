# == Schema Information
#
# Table name: airlines
#
#  id         :uuid             not null, primary key
#  code       :integer          not null
#  name       :string           not null
#  state      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Airline < ApplicationRecord
    has_many :airplanes, dependent: :destroy
end
