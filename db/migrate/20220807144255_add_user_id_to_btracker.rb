class AddUserIdToBtracker < ActiveRecord::Migration[7.0]
  def change
    add_column :btrackers, :user_id, :integer
    add_index :btrackers, :user_id
  end
end
