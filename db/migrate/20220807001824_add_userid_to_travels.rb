class AddUseridToTravels < ActiveRecord::Migration[7.0]
  def change
    add_column :travels, :user_id, :integer
    add_index :travels, :user_id
  end
end
