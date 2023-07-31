class AddAnotherIdToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :own_id, :integer
    add_index :projects, :own_id
  end
end
