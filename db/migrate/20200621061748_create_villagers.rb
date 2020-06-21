class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :birthday
      t.string :gender
      t.string :icon_uri
      t.string :image_uri
      t.string :catch_phrase
      t.string :personality
      t.string :species

      t.timestamps
    end
  end
end
