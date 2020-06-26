class AddVotedToVillagers < ActiveRecord::Migration[6.0]
  def change
    add_column :villagers, :voted, :integer, default: 100
  end
end
