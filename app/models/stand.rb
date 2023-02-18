# == Schema Information
#
# Table name: stands
#
#  id            :integer          not null, primary key
#  stand_name    :string
#  type_of_stand :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  acreage_id    :integer
#  best_wind_id  :integer
#  stand_id      :integer
#  worst_wind_id :integer
#
class Stand < ApplicationRecord
end
