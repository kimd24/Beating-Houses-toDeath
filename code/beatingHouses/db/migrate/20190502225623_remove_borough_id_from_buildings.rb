class RemoveBoroughIdFromBuildings < ActiveRecord::Migration[5.2]
  def change
    remove_column :buildings, :borough_id, :string
  end
end
