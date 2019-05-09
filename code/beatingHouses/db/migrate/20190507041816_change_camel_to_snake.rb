class ChangeCamelToSnake < ActiveRecord::Migration[5.2]
  def change
    rename_column :buildings, :buildingCategory, :building_category
    rename_column :buildings, :sqFoot, :square_foot
    rename_column :boroughs, :gradRate, :grad_rate
    rename_column :boroughs, :crimeRate, :crime_rate
  end
end
