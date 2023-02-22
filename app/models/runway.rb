# == Schema Information
#
# Table name: runways
#
#  id         :uuid             not null, primary key
#  longitud   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Runway < ApplicationRecord
end
