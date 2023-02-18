class CreateCrops < ActiveRecord::Migration[6.0]
  def change
    create_table :crops do |t|
      t.integer :crop_id
      t.string :crop_type

      t.timestamps
    end
  end
end
