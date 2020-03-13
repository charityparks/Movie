class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :name
      t.integer :movie_id

      t.timestamps
    end
  end
end
