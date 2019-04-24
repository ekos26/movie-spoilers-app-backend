class CreateMovieGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_groups do |t|
      t.references :movie, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
