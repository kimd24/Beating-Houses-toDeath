class AddBoroughIdToPointOfInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :point_of_interests, :borough_id, :integer
  end
end
