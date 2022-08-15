class CreateBudgetplaners < ActiveRecord::Migration[7.0]
  def change
    create_table :budgetplaners do |t|
      t.string :category
      t.string :subcategory
      t.integer :amount
      t.string :notes
      t.string :month

      t.timestamps
    end
  end
end
