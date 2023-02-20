# == Schema Information
#
# Table name: stands
#
#  id            :integer          not null, primary key
#  latitude      :float
#  longitude     :float
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

  def stand_type
    my_type_of_stand = self.type_of_stand

    matching_types = Type.where({ :id => my_type_of_stand })

    the_type = matching_types.at(0)

    return the_type
  end

  def acreage
    my_acreage_id = self.acreage_id

    matching_acreages = Acreage.where({ :id => my_acreage_id })

    the_acreage = matching_acreages.at(0)

    return the_acreage
  end

  def best_wind
    my_best_wind_id = self.best_wind_id

    matching_winds = Wind.where({ :id => my_best_wind_id })

    the_wind = matching_winds.at(0)

    return the_wind
  end

  def worst_wind
    my_worst_wind_id = self.worst_wind_id

    matching_winds = Wind.where({ :id => my_worst_wind_id })

    the_wind = matching_winds.at(0)

    return the_wind
  end

  def foodsources
    my_id = self.stand_id

    matching_foodsources = Foodsource.where({ :stand_id => my_id })

    return matching_foodsources
  end

  def crops
    array_of_crop_ids = Array.new

    my_foodsources = self.foodsources

    my_foodsources.each do |a_foodsource|
      the_crop = a_foodsource.crop

      array_of_crop_ids.push(the_crop.id)
    end

    matching_crops = Crop.where({ :id => array_of_crop_ids })

    return matching_crops
  end

end
