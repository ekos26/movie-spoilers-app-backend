class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :poster
      t.text :plot

      t.timestamps
    end
  end
end
