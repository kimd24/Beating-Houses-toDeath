class AddBoroughIdToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :borough_id, :integer
  end
end
