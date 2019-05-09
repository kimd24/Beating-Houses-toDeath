class RemoveBoroughnameCol < ActiveRecord::Migration[5.2]
  def change
    remove_column :buildings, :borough, :string
    remove_column :point_of_interests, :borough, :string
  end
end
