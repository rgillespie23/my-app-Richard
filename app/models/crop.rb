# == Schema Information
#
# Table name: crops
#
#  id         :integer          not null, primary key
#  crop_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  crop_id    :integer
#
class Crop < ApplicationRecord

  def foodsources
    my_id = self.id

    matching_foodsources = Foodsource.where({ :crop_id => my_id })

    return matching_foodsources
  end

  def stands
    array_of_stand_ids = Array.new

    my_foodsources = self.foodsources

    my_foodsources.each do |a_foodsource|
      if a_foodsource.crop != nil && a_foodsource.stand != nil
        the_stand = a_foodsource.stand

        array_of_stand_ids.push(the_stand.stand_id)
      else
      end
    end

    matching_stands = Stand.where({ :stand_id => array_of_stand_ids })

    return matching_stands
  end

end
