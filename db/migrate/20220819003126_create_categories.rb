class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :cgory
      t.string :scgory
      t.float :amount
      t.boolean :approval

      t.timestamps
    end
  end
end
