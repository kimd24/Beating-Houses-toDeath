class AddLatToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :lat, :float
  end
end
