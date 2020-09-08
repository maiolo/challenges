class AddAddressToThreatsAndHeroes < ActiveRecord::Migration[6.0]
  def change
    add_column :threats, :address, :string
    add_column :heroes, :address, :string
  end
end
