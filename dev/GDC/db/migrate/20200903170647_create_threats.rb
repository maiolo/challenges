class CreateThreats < ActiveRecord::Migration[6.0]
  def change
    create_table :threats do |t|
      t.string :name, null: false
      t.string :location
      t.boolean :active, null: false, default: false
      t.string :level, null: false

      t.timestamps
    end

    add_index :threats, :name, unique: true 
  end
end
