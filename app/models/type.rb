# == Schema Information
#
# Table name: types
#
#  id               :integer          not null, primary key
#  type_of_stand    :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  type_of_stand_id :integer
#
class Type < ApplicationRecord
end
