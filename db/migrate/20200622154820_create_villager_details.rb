class CreateVillagerDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :villager_details do |t|
      t.integer :point
      t.references :villager, foreign_key: true

      t.timestamps
    end
  end
end
