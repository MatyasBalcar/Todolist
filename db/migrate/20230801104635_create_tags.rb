class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :tags, :user_id
  end
end
