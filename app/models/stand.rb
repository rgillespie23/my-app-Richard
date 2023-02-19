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

  def stand_type
    my_type_of_stand = self.type_of_stand

    matching_types = Type.where({ :id => my_type_of_stand })

    the_type = matching_types.at(0)

    return the_type
  end
  
end
