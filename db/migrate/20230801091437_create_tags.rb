class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :own_id
      t.integer :project_id
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
    add_index :tags, :own_id
  end
end
