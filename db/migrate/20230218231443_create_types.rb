class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.integer :type_of_stand_id
      t.string :type_of_stand

      t.timestamps
    end
  end
end
