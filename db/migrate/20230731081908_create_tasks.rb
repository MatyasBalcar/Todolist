class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :is_done
      t.integer :user_id
      t.integer :project_id
      t.integer :own_id

      t.timestamps
    end
    add_index :tasks, :own_id
  end
end
