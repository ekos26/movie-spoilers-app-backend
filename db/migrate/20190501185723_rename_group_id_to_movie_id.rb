class RenameGroupIdToMovieId < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :group_id, :movie_id
  end
end
