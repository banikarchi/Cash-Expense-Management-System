class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.float :amount
      t.string :month

      t.timestamps
    end
  end
end
