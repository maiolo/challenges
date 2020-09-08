class RemoveIndexFromThreats < ActiveRecord::Migration[6.0]
  def change
    remove_index :threats, name: 'index_threats_on_name'
  end
end
