# == Schema Information
#
# Table name: foodsources
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  crop_id        :integer
#  food_source_id :integer
#  stand_id       :integer
#
class Foodsource < ApplicationRecord
end
