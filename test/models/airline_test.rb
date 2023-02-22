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
require "test_helper"

class AirlineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
