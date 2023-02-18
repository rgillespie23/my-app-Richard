class CreateWinds < ActiveRecord::Migration[6.0]
  def change
    create_table :winds do |t|
      t.integer :wind_direction_id
      t.string :wind_direction

      t.timestamps
    end
  end
end
