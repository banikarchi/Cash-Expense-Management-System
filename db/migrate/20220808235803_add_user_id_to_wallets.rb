class AddUserIdToWallets < ActiveRecord::Migration[7.0]
  def change
    add_column :wallets, :user_id, :integer
    add_index :wallets, :user_id
  end
end
