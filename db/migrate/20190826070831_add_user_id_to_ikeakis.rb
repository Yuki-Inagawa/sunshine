class AddUserIdToIkeakis < ActiveRecord::Migration[5.0]
  def change
    add_column :ikezakis, :user_id, :integer
  end
end
