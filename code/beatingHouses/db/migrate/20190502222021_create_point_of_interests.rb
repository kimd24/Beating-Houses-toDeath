class CreatePointOfInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :point_of_interests do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :borough

      t.timestamps
    end
  end
end
