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

  def crop
    my_crop_id = self.crop_id

    matching_crops = Crop.where({ :id => my_crop_id })

    the_crop = matching_crops.at(0)

    return the_crop
  end
  
end
