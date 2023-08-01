class DropStiteks < ActiveRecord::Migration[7.0]
  def change
    drop_table :stiteks
  end
end
