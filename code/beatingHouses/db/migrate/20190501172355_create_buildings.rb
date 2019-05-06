class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :buildingCategory
      t.float :price
      t.float :sqFoot
      t.integer :units
      t.integer :year
      t.string :borough

      t.timestamps
    end
  end
end
