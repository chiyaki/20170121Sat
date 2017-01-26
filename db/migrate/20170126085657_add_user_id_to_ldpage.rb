class AddUserIdToLdpage < ActiveRecord::Migration[5.0]
  def change
    add_column :ldpages, :user_id, :integer
  end
end
