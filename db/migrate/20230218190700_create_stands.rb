class CreateStands < ActiveRecord::Migration[6.0]
  def change
    create_table :stands do |t|
      t.int :stand_id
      t.string :stand_name
      t.int :best_wind_id
      t.int :worst_wind_id
      t.int :type_of_stand
      t.int :acreage_id

      t.timestamps
    end
  end
end
