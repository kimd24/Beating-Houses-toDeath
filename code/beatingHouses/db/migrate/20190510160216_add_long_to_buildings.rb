class AddLongToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :long, :float
  end
end
