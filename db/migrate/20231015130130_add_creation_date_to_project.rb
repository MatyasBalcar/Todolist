class AddCreationDateToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :creation_date, :date
  end
end
