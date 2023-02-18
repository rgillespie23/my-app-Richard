class CreateDeerstands < ActiveRecord::Migration[6.0]
  def change
    create_table :deerstands do |t|
      t.string :stand_id
      t.string :stand_name
      t.string :best_wind_id
      t.string :worst_wind_id
      t.string :type_of_stand_id
      t.string :acreage_id

      t.timestamps
    end
  end
end
