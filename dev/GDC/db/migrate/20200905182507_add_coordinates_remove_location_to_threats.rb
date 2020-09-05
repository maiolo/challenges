class AddCoordinatesRemoveLocationToThreats < ActiveRecord::Migration[6.0]
  def change
    remove_column :threats, :location
    add_column :threats, :latitude, :float
    add_column :threats, :longitude, :float
  end
end
