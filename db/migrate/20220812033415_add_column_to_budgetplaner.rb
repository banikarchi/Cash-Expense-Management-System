class AddColumnToBudgetplaner < ActiveRecord::Migration[7.0]
  def change
    add_column :budgetplaners, :user_id, :integer
  
    add_index :budgetplaners, :user_id
  end
end
