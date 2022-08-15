class CreateBtrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :btrackers do |t|
      t.string :category
      t.string :notes
      t.float :amount
      t.date :month

      t.timestamps
    end
  end
end
