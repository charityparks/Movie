class AddUserIdToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :user_id, :integer
  end
end
