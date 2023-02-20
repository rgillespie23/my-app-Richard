class AddLongitudeToStands < ActiveRecord::Migration[6.0]
  def change
    add_column :stands, :longitude, :float
  end
end
