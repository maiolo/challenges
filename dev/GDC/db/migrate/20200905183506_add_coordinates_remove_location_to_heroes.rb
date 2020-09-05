class AddCoordinatesRemoveLocationToHeroes < ActiveRecord::Migration[6.0]
  def change
    remove_column :heroes, :location
    add_column :heroes, :latitude, :float
    add_column :heroes, :longitude, :float
  end
end
