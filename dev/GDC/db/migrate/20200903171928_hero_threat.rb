class HeroThreat < ActiveRecord::Migration[6.0]
  def change
    create_table :hero_treath do |t|
      t.references :hero, null: false, foreign_key: { to_table: :heroes }
      t.references :threat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
