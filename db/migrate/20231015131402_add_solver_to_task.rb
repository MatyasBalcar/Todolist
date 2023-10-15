class AddSolverToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :solver_id, :integer
  end
end
