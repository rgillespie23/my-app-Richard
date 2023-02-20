class AddLattitudeToStands < ActiveRecord::Migration[6.0]
  def change
    add_column :stands, :latitude, :float
  end
end
