class ChangeForeignKey < ActiveRecord::Migration[5.2]
  def change
    if foreign_key_exists?(:comments, :groups)
      remove_foreign_key :comments, :groups
    end
  end
end
