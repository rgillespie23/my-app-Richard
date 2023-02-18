# == Schema Information
#
# Table name: deerstands
#
#  id               :integer          not null, primary key
#  stand_name       :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  acreage_id       :string
#  best_wind_id     :string
#  stand_id         :string
#  type_of_stand_id :string
#  worst_wind_id    :string
#
class Deerstand < ApplicationRecord
end
