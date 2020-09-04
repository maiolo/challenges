class CreateHeroes < ActiveRecord::Migration[6.0]
  def change
    create_table :heroes do |t|
      t.string :hero_name, null: false
      t.string :hero_class, null: false
      t.boolean :on_duty, null: false, default: false
      t.string :location

      t.timestamps
    end

    add_index :heroes, :hero_name, unique: true
  end
end
