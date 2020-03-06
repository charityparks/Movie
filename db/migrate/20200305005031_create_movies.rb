class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :actor
      t.string :role
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end
