class CreateSorts < ActiveRecord::Migration[5.0]
  def change
    create_table :sorts do |t|
      t.string :name

      t.timestamps
    end
  end
end
