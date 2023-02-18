class CreateAcreages < ActiveRecord::Migration[6.0]
  def change
    create_table :acreages do |t|
      t.integer :acreage_id
      t.string :acreage

      t.timestamps
    end
  end
end
