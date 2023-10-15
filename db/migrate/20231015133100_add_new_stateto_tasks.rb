class AddNewStatetoTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :state_advanced, :string
  end
end
