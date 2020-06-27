class AddRankToVillagers < ActiveRecord::Migration[6.0]
  def change
    add_column :villagers, :rank, :string, default: 'F'
  end
end
