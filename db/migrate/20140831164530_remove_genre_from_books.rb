class RemoveGenreFromBooks < ActiveRecord::Migration
  def up
    remove_index :books, [:genre_id]
    remove_column :books, :genre_id
  end

  def down
    add_reference :books, :genre, index: true
  end
end
