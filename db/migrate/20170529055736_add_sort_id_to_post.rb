class AddSortIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :Sort_id, :integer
  end
end
