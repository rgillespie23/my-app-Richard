# == Schema Information
#
# Table name: acreages
#
#  id         :integer          not null, primary key
#  acreage    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  acreage_id :integer
#
class Acreage < ApplicationRecord
end
