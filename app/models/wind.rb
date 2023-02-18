# == Schema Information
#
# Table name: winds
#
#  id                :integer          not null, primary key
#  wind_direction    :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  wind_direction_id :integer
#
class Wind < ApplicationRecord
end
