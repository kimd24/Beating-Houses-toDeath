class CreateBoroughs < ActiveRecord::Migration[5.2]
  def change
    create_table :boroughs do |t|
      t.string :name
      t.float :gradRate
      t.float :crimeRate

      t.timestamps
    end
  end
end
