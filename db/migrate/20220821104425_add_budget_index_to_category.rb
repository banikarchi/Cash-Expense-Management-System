class AddBudgetIndexToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :b_index, :integer
    add_index :categories, :b_index
  end
end
