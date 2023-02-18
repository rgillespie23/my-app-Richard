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
end
