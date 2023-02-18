class CreateStands < ActiveRecord::Migration[6.0]
  def change
    create_table :stands do |t|
      t.integer :stand_id
      t.string :stand_name
      t.integer :best_wind_id
      t.integer :worst_wind_id
      t.integer :type_of_stand
      t.integer :acreage_id

      t.timestamps
    end
  end
end
