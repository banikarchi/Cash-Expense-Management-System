class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.string :category
      t.float :expenses
      t.boolean :approve

      t.timestamps
    end
  end
end
