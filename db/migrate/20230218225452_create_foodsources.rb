class CreateFoodsources < ActiveRecord::Migration[6.0]
  def change
    create_table :foodsources do |t|
      t.integer :food_source_id
      t.integer :stand_id
      t.integer :crop_id

      t.timestamps
    end
  end
end
