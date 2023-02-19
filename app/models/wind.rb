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

  def stands
    my_id = self.id

    matching_stands = Stand.where({ :best_wind_id => my_id })

    return matching_stands
  end
  
end
