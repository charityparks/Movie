class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :category
      t.string :movie_id
      t.string :actor_id
    end
  end
end
