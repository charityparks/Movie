class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :actor
      t.string :role
      t.string :rating
      t.text :description
    end
  end
end
